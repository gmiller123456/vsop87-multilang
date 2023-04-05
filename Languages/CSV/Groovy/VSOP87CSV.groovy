//VSOP87-Multilang https://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    private int version=-1;
    private String versionString;
    private final char[] varsOsculating=['a','l','k','h','q','p'];
    private final char[] varsRectangular=['x','y','z'];
    private final char[] varsPolar=['l','b','r'];
    private Map<Integer,Map<Character,Map<Integer,List<double[]>>>> data=null;

    public VSOP87CSV(String filename) throws Exception{
        /*
        File is assumed to be in the following format:
        Version,Planet,Variable,Exponent,A,B,C
        vsop87 ,emb       ,a,0,     1.00000101778, 0.00000000000,       0.00000000000
        vsop87 ,emb       ,a,0,     0.00001120473, 2.30855131827,   11506.76976979360
        */
        loadFile(filename);
    }

    public double[] getSun(double t){
        return getPlanet(0,t);
    }

    public double[] getMercury(double t){
        return getPlanet(1,t);
    }

    public double[] getVenus(double t){
        return getPlanet(2,t);
    }

    public double[] getEarth(double t){
        return getPlanet(3,t);
    }

    public double[] getMars(double t){
        return getPlanet(4,t);
    }

    public double[] getJupiter(double t){
        return getPlanet(5,t);
    }

    public double[] getSaturn(double t){
        return getPlanet(6,t);
    }

    public double[] getUranus(double t){
        return getPlanet(7,t);
    }

    public double[] getNeptune(double t){
        return getPlanet(8,t);
    }

    public double[] getEmb(double t){
        return getPlanet(9,t);
    }

    public double[] getMoon(double[] earth, double[] emb){
        double[] temp=new double[3];
        temp[0]=(emb[0]-earth[0])*(1 + 1 / 0.01230073677);
        temp[1]=(emb[1]-earth[1])*(1 + 1 / 0.01230073677);
        temp[2]=(emb[2]-earth[2])*(1 + 1 / 0.01230073677);
        temp[0]=temp[0]+earth[0];
        temp[1]=temp[1]+earth[1];
        temp[2]=temp[2]+earth[2];
        return temp;
    }

    private double[] getPlanet(int planetID, double t){

        double[] pv=new double[6];
        Map<Character,Map<Integer,List<double[]>>> planet=data.get(planetID);

        if(version==0) {
            for(int i=0;i<varsOsculating.length;i++){
                Map<Integer,List<double[]>> v=planet.get(varsOsculating[i]);
                pv[i]=computeSeries(v,t)[0];
            }
        } else {
            char[] vars=varsRectangular;
            if(version==2 || version==4){
                vars=varsPolar;
            }
            for(int i=0;i<vars.length;i++){
                Map<Integer,List<double[]>> v=planet.get(vars[i]);
                double[] temp=computeSeries(v,t);
                pv[i]=temp[0];
                pv[i+3]=temp[1];
            }
        }

        return pv;
    }

    private double[] computeSeries(Map<Integer, List<double[]>> v,double t) {
        double acc=0;
        double vsum=0;
        for(int exponent=0;exponent<v.size();exponent++){
            List<double[]> expList=v.get(exponent);
            double psum=0;
            for(int i=0;i<expList.size();i++){
                double[] l=expList.get(i);
                final double a=l[0];
                final double b=l[1];
                final double c=l[2];

                //Position
                psum+=a*Math.cos(b+c*t);

                //Velocity
                if(exponent==0){
                    vsum+= - a * c * Math.sin(b + c*t);
                } else {
                    vsum+=Math.pow(t,exponent-1) * exponent * a * Math.cos(b + c * t) - Math.pow(t,exponent) * a * c * Math.sin(b + c*t);
                }
            }
            acc+=Math.pow(t,exponent)*psum;
        }
        double[] temp=new double[2];
        temp[0]=acc;
        temp[1]=vsum/ 365250.0;
        return temp;
    }

    private void loadFile(String filename) throws Exception {
        BufferedReader br = new BufferedReader(new FileReader(filename));
        String line = br.readLine(); //Skip header
        data=new HashMap<Integer,Map<Character,Map<Integer,List<double[]>>>>();
        while ((line = br.readLine()) != null) {
            String[] f=line.split(",");

            if(version==-1){
                version=getVersionID(f[0].trim());
                versionString=f[0].trim();
            }

            double[] vars=new double[3];
            vars[0]=Double.parseDouble(f[4]);
            vars[1]=Double.parseDouble(f[5]);
            vars[2]=Double.parseDouble(f[6]);

            int planet=getPlanetID(f[1].trim());
            char variable=f[2].charAt(0);
            int exponent=Integer.parseInt(f[3]);

            if(data.get(planet)==null){
                data.put(planet, new HashMap<Character, Map<Integer, List<double[]>>>());
            }
            if(data.get(planet).get(variable)==null){
                data.get(planet).put(variable, new HashMap<Integer, List<double[]>>());
            }
            if(data.get(planet).get(variable).get(exponent)==null){
                data.get(planet).get(variable).put(exponent, new ArrayList<double[]>());
            }
            data.get(planet).get(variable).get(exponent).add(vars);
        }
        br.close();
    }

    private int getVersionID(String s){
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

    private int getPlanetID(String planet) {
        if(planet.toLowerCase().equals("sun")){
            return 0;
        } else if(planet.toLowerCase().equals("mercury")){
            return 1;
        } else if(planet.toLowerCase().equals("venus")){
            return 2;
        } else if(planet.toLowerCase().equals("earth")){
            return 3;
        } else if(planet.toLowerCase().equals("mars")){
            return 4;
        } else if(planet.toLowerCase().equals("jupiter")){
            return 5;
        } else if(planet.toLowerCase().equals("saturn")){
            return 6;
        } else if(planet.toLowerCase().equals("uranus")){
            return 7;
        } else if(planet.toLowerCase().equals("neptune")){
            return 8;
        } else if(planet.toLowerCase().equals("emb")){
            return 9;
        }
        return -1;
    }
}
