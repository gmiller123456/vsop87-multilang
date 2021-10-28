//VSOP87-Multilang https://www.celestialprogramming.com/vsop87-multilang/index.html
//Greg Miller (gmiller@gregmiller.net) 2021.  Released as Public Domain

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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

namespace VSOP87CSV
{
    class VSOP87CSV
    {
        private int version = -1;
        private String versionString;
        private char[] varsOsculating = { 'a', 'l', 'k', 'h', 'q', 'p' };
        private char[] varsRectangular = { 'x', 'y', 'z' };
        private char[] varsPolar = { 'l', 'b', 'r' };
        private Dictionary<int, Dictionary<char, Dictionary<int, List<double[]>>>> data = null;

        public VSOP87CSV(String filename)
        {
            /*
            File is assumed to be in the following format:
            Version,Planet,Variable,Exponent,A,B,C
            vsop87 ,emb       ,a,0,     1.00000101778, 0.00000000000,       0.00000000000
            vsop87 ,emb       ,a,0,     0.00001120473, 2.30855131827,   11506.76976979360
            */
            loadFile(filename);
        }

        public double[] getSun(double t)
        {
            return getPlanet(0, t);
        }

        public double[] getMercury(double t)
        {
            return getPlanet(1, t);
        }

        public double[] getVenus(double t)
        {
            return getPlanet(2, t);
        }

        public double[] getEarth(double t)
        {
            return getPlanet(3, t);
        }

        public double[] getMars(double t)
        {
            return getPlanet(4, t);
        }

        public double[] getJupiter(double t)
        {
            return getPlanet(5, t);
        }

        public double[] getSaturn(double t)
        {
            return getPlanet(6, t);
        }

        public double[] getUranus(double t)
        {
            return getPlanet(7, t);
        }

        public double[] getNeptune(double t)
        {
            return getPlanet(8, t);
        }

        public double[] getEmb(double t)
        {
            return getPlanet(9, t);
        }

        public double[] getMoon(double[] earth, double[] emb)
        {
            double[] temp = new double[3];
            temp[0] = (emb[0] - earth[0]) * (1 + 1 / 0.01230073677);
            temp[1] = (emb[1] - earth[1]) * (1 + 1 / 0.01230073677);
            temp[2] = (emb[2] - earth[2]) * (1 + 1 / 0.01230073677);
            temp[0] = temp[0] + earth[0];
            temp[1] = temp[1] + earth[1];
            temp[2] = temp[2] + earth[2];
            return temp;
        }

        private double[] getPlanet(int planetID, double t)
        {

            double[] pv = new double[6];
            Dictionary<char, Dictionary<int, List<double[]>>> planet = data[planetID];

            if (version == 0)
            {
                for (int i = 0; i < varsOsculating.Length; i++)
                {
                    Dictionary<int, List<double[]>> v = planet[varsOsculating[i]];
                    pv[i] = computeSeries(v, t)[0];
                }
            }
            else
            {
                char[] vars = varsRectangular;
                if (version == 2 || version == 4)
                {
                    vars = varsPolar;
                }
                for (int i = 0; i < vars.Length; i++)
                {
                    Dictionary<int, List<double[]>> v = planet[vars[i]];
                    double[] temp = computeSeries(v, t);
                    pv[i] = temp[0];
                    pv[i + 3] = temp[1];
                }
            }

            return pv;
        }

        private double[] computeSeries(Dictionary<int, List<double[]>> v, double t)
        {
            double acc = 0;
            double vsum = 0;
            for (int exponent = 0; exponent < v.Count; exponent++)
            {
                List<double[]> expList = v[exponent];
                double psum = 0;
                for (int i = 0; i < expList.Count; i++)
                {
                    double[] l = expList[i];
                    double a = l[0];
                    double b = l[1];
                    double c = l[2];

                    //Position
                    psum += a * Math.Cos(b + c * t);

                    //Velocity
                    if (exponent == 0)
                    {
                        vsum += -a * c * Math.Sin(b + c * t);
                    }
                    else
                    {
                        vsum += Math.Pow(t, exponent - 1) * exponent * a * Math.Cos(b + c * t) - Math.Pow(t, exponent) * a * c * Math.Sin(b + c * t);
                    }
                }
                acc += Math.Pow(t, exponent) * psum;
            }
            double[] temp = new double[2];
            temp[0] = acc;
            temp[1] = vsum / 365250.0;
            return temp;
        }

        private void loadFile(String filename)
        {
            StreamReader br = new StreamReader(filename);
            String line = br.ReadLine(); //Skip header
            data = new Dictionary<int, Dictionary<char, Dictionary<int, List<double[]>>>>();
            while ((line = br.ReadLine()) != null)
            {
                String[] f = line.Split(',');

                if (version == -1)
                {
                    version = getVersionID(f[0].Trim());
                    versionString = f[0].Trim();
                }

                double[] vars = new double[3];
                vars[0] = Double.Parse(f[4]);
                vars[1] = Double.Parse(f[5]);
                vars[2] = Double.Parse(f[6]);

                int planet = getPlanetID(f[1].Trim());
                char variable = f[2][0];
                int exponent = Int32.Parse(f[3]);

                if (!data.ContainsKey(planet))
                {
                    data[planet] = new Dictionary<char, Dictionary<int, List<double[]>>>();
                }
                if (!data[planet].ContainsKey(variable))
                {
                    data[planet][variable] = new Dictionary<int, List<double[]>>();
                }
                if (!data[planet][variable].ContainsKey(exponent))
                {
                    data[planet][variable][exponent] = new List<double[]>();
                }
                data[planet][variable][exponent].Add(vars);
            }
            br.Close();
        }

        private int getVersionID(String s)
        {
            if (s.Equals("vsop87"))
            {
                return 0;
            }
            else if (s.Equals("vsop87a"))
            {
                return 1;
            }
            else if (s.Equals("vsop87b"))
            {
                return 2;
            }
            else if (s.Equals("vsop87c"))
            {
                return 3;
            }
            else if (s.Equals("vsop87d"))
            {
                return 4;
            }
            else if (s.Equals("vsop87e"))
            {
                return 5;
            }
            return -1;
        }

        private int getPlanetID(String planet)
        {
            if (planet.ToLower().Equals("sun"))
            {
                return 0;
            }
            else if (planet.ToLower().Equals("mercury"))
            {
                return 1;
            }
            else if (planet.ToLower().Equals("venus"))
            {
                return 2;
            }
            else if (planet.ToLower().Equals("earth"))
            {
                return 3;
            }
            else if (planet.ToLower().Equals("mars"))
            {
                return 4;
            }
            else if (planet.ToLower().Equals("jupiter"))
            {
                return 5;
            }
            else if (planet.ToLower().Equals("saturn"))
            {
                return 6;
            }
            else if (planet.ToLower().Equals("uranus"))
            {
                return 7;
            }
            else if (planet.ToLower().Equals("neptune"))
            {
                return 8;
            }
            else if (planet.ToLower().Equals("emb"))
            {
                return 9;
            }
            return -1;
        }
    }
}
