//VSOP87-Multilang https://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2024.  Released as Public Domain

import java.io.BufferedReader;
import java.io.FileReader;
import kotlin.collections.ArrayList;
import kotlin.collections.HashMap;
import kotlin.collections.List;
import kotlin.collections.Map;

/*
It is the responsibility of the caller to not attempt to get a planet on
a VSOP version which does not contain data for that planet.

input t - Time in Julian centuries since J2000: (jd - 2451545.0) / 365250.0)
ouptut - VSOP87
            Osculating elements in order: a, l, k, h, q, p
         VSOP87A, VSOP87C, VSOP87E
            Rectangular coordinates and velocities: x, y, z, vx, vy, vz
            in AU and AU/Day
         VSOP87B, VSOP87D
            Polar coordinates and velocities: l, b, r, lv, bv, rv
            in radians and radians/Day (r, rv in AU and AU/Day)
*/

public class VSOP87CSV {

    private var version: Int=-1;
    private var versionString: String="";
    private val varsOsculating: CharArray= charArrayOf('a','l','k','h','q','p');
    private val varsRectangular: CharArray=charArrayOf('x','y','z');
    private val varsPolar: CharArray=charArrayOf('l','b','r');
    private var data: HashMap<Int,HashMap<Char,HashMap<Int,ArrayList<DoubleArray>>>> = HashMap<Int,HashMap<Char,HashMap<Int,ArrayList<DoubleArray>>>>();

    constructor(filename: String){
        /*
        File is assumed to be in the following format:
        Version,Planet,Variable,Exponent,A,B,C
        vsop87 ,emb       ,a,0,     1.00000101778, 0.00000000000,       0.00000000000
        vsop87 ,emb       ,a,0,     0.00001120473, 2.30855131827,   11506.76976979360
        */
        loadFile(filename);
    }

    fun getSun(t: Double): DoubleArray{
        return getPlanet(0,t);
    }

    fun getMercury(t: Double): DoubleArray{
        return getPlanet(1,t);
    }

    fun getVenus(t: Double): DoubleArray{
        return getPlanet(2,t);
    }

    fun getEarth(t: Double): DoubleArray{
        return getPlanet(3,t);
    }

    fun getMars(t: Double): DoubleArray{
        return getPlanet(4,t);
    }

    fun getJupiter(t: Double): DoubleArray{
        return getPlanet(5,t);
    }

    fun getSaturn(t: Double): DoubleArray{
        return getPlanet(6,t);
    }

    fun getUranus(t: Double): DoubleArray{
        return getPlanet(7,t);
    }

    fun getNeptune(t: Double): DoubleArray{
        return getPlanet(8,t);
    }

    fun getEmb(t: Double): DoubleArray{
        return getPlanet(9,t);
    }

    fun getMoon(earth: DoubleArray, emb: DoubleArray): DoubleArray{
        val temp=DoubleArray(3);
        temp[0]=(emb[0]-earth[0])*(1 + 1 / 0.01230073677);
        temp[1]=(emb[1]-earth[1])*(1 + 1 / 0.01230073677);
        temp[2]=(emb[2]-earth[2])*(1 + 1 / 0.01230073677);
        temp[0]=temp[0]+earth[0];
        temp[1]=temp[1]+earth[1];
        temp[2]=temp[2]+earth[2];
        return temp;
    }

    private fun getPlanet(planetID: Int, t: Double): DoubleArray{

        val pv=DoubleArray(6);
        val planet: Map<Char,Map<Int,List<DoubleArray>>> = data.get(planetID)!!;

        if(version==0) {
            for(i in 0..varsOsculating.size-1){
                val v: Map<Int,List<DoubleArray>> = planet.get(varsOsculating[i])!!;
                pv[i]=computeSeries(v,t)[0];
            }
        } else {
            var vars: CharArray=varsRectangular;
            if(version==2 || version==4){
                vars=varsPolar;
            }
            for(i in 0..vars.size-1){
                val v=planet.get(vars[i])!!;
                val temp=computeSeries(v,t);
                pv[i]=temp[0];
                pv[i+3]=temp[1];
            }
        }

        return pv;
    }

    private fun computeSeries(v: Map<Int, List<DoubleArray>> ,t: Double): DoubleArray {
        var acc=0.0;
        var vsum=0.0;
        for(exponent in 0..v.size-1){
            val expList=v.get(exponent)!!;
            var psum=0.0;
            for(i in 0..expList.size-1){
                val l=expList.get(i);
                val a=l[0];
                val b=l[1];
                val c=l[2];

                //Position
                psum+=a*Math.cos(b+c*t);

                //Velocity
                if(exponent==0){
                    vsum+= - a * c * Math.sin(b + c*t);
                } else {
                    vsum+=Math.pow(t,exponent.toDouble()-1) * exponent * a * Math.cos(b + c * t) - Math.pow(t,exponent.toDouble()) * a * c * Math.sin(b + c*t);
                }
            }
            acc+=Math.pow(t,exponent.toDouble())*psum;
        }
        val temp=DoubleArray(2);
        temp[0]=acc;
        temp[1]=vsum/ 365250.0;
        return temp;
    }

    private fun loadFile(filename: String) {
        val br = BufferedReader(FileReader(filename));
        var line = br.readLine(); //Skip header
        line = br.readLine();
        while (line != null) {
            val f=line.split(",");

            if(version==-1){
                version=getVersionID(f[0].trim());
                versionString=f[0].trim();
            }

            val vars=DoubleArray(3);
            vars[0]=f[4].toDouble();
            vars[1]=f[5].toDouble();
            vars[2]=f[6].toDouble();

            val planet=getPlanetID(f[1].trim());
            val variable: Char=f[2].get(0);
            val exponent: Int=f[3].toInt();


            if(data.get(planet)==null){
                data.put(planet, HashMap<Char, HashMap<Int, ArrayList<DoubleArray>>>());
            }
            if(data.get(planet)!!.get(variable)==null){
                data.get(planet)!!.put(variable, HashMap<Int, ArrayList<DoubleArray>>());
            }
            if(data.get(planet)!!.get(variable)!!.get(exponent)==null){
                data.get(planet)!!.get(variable)!!.put(exponent, ArrayList<DoubleArray>());
            }
            data.get(planet)!!.get(variable)!!.get(exponent)!!.add(vars);
            
            line = br.readLine();
        }
        br.close();
    }

    private fun getVersionID(s: String): Int{
        if(s.equals("vsop87")){
            return 0;
        } else if(s.equals("vsop87a")){
            return 1;
        } else if(s.equals("vsop87b")){
            return 2;
        } else if(s.equals("vsop87c")){
            return 3;
        } else if(s.equals("vsop87d")){
            return 4;
        } else if(s.equals("vsop87e")){
            return 5;
        }
        return -1;
    }

    private fun getPlanetID(planet: String): Int {
        if(planet.lowercase().equals("sun")){
            return 0;
        } else if(planet.lowercase().equals("mercury")){
            return 1;
        } else if(planet.lowercase().equals("venus")){
            return 2;
        } else if(planet.lowercase().equals("earth")){
            return 3;
        } else if(planet.lowercase().equals("mars")){
            return 4;
        } else if(planet.lowercase().equals("jupiter")){
            return 5;
        } else if(planet.lowercase().equals("saturn")){
            return 6;
        } else if(planet.lowercase().equals("uranus")){
            return 7;
        } else if(planet.lowercase().equals("neptune")){
            return 8;
        } else if(planet.lowercase().equals("emb")){
            return 9;
        }
        return -1;
    }
}
