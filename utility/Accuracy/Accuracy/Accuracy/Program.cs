using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Accuracy
{
    class Program
    {
        static void Main(string[] args)
        {
            //Test from 2000 B.C. to  3000 A.D. same as Five Millennium Catalog of Solar Eclipses
            //JD 990923.5 to 2816787.5

            Dictionary<string, Vsop87a> d = new Dictionary<string, Vsop87a>();
            Vsop87a full=new vsop87a_full();
            d.Add("xxlarge", new vsop87a_xxlarge());
            d.Add("xlarge", new vsop87a_xlarge());
            d.Add("large", new vsop87a_large());
            d.Add("small", new vsop87a_small());
            d.Add("xsmall", new vsop87a_xsmall());
            d.Add("milli", new vsop87a_milli());
            d.Add("micro", new vsop87a_micro());
            d.Add("nano", new vsop87a_nano());
            d.Add("pico", new vsop87a_pico());

            Random random = new Random();
            double JD = 990923.5;
            while(JD< 2816787.5)
            {
                double t = jd2et(JD);
                double[] full_Earth = full.getEarth(t);
                double[] full_Emb = full.getEmb(t);
                double[] full_Jupiter = full.getJupiter(t);
                double[] full_Mars = full.getMars(t);
                double[] full_Mercury = full.getMercury(t);
                double[] full_Neptune = full.getNeptune(t);
                double[] full_Saturn = full.getSaturn(t);
                double[] full_Uranus = full.getUranus(t);
                double[] full_Venus = full.getVenus(t);

                foreach (KeyValuePair<string, Vsop87a> item in d)
                {
                    double[] truncEarth=item.Value.getEarth(t);

                    Compare(JD, item.Key, "Emb", item.Value.getEmb(t), truncEarth, full_Earth, full_Emb);
                    Compare(JD, item.Key, "Jupiter", item.Value.getJupiter(t), truncEarth, full_Earth, full_Jupiter);
                    Compare(JD, item.Key, "Mars", item.Value.getMars(t), truncEarth, full_Earth, full_Mars);
                    Compare(JD, item.Key, "Mercury", item.Value.getMercury(t), truncEarth, full_Earth, full_Mercury);
                    Compare(JD, item.Key, "Neptune", item.Value.getNeptune(t), truncEarth, full_Earth, full_Neptune);
                    Compare(JD, item.Key, "Saturn", item.Value.getSaturn(t), truncEarth, full_Earth, full_Saturn);
                    Compare(JD, item.Key, "Uranus", item.Value.getUranus(t), truncEarth, full_Earth, full_Uranus);
                    Compare(JD, item.Key, "Venus", item.Value.getVenus(t), truncEarth, full_Earth, full_Venus);
                }

                JD += random.NextDouble()*1000;
            }

            //Console.WriteLine("Done");
            //Console.ReadLine();
        }

        private static void Compare(double JD, string key, string planet, double[] v, double[] truncEarth, double[] fullEarth, double[] fullPlanet)
        {
            v[0]-=truncEarth[0];
            v[1]-=truncEarth[1];
            v[2]-=truncEarth[2];

            //Convert to polar coordinates
            double r1 = Math.Sqrt(v[0] * v[0] + v[1] * v[1] + v[2] * v[2]);
            double a1 = Math.Acos(v[2] / r1);
            double b1 = Math.Atan2(v[1], v[0]);


            double[] t = new double[3];
            t[0] = fullPlanet[0] - fullEarth[0];
            t[1] = fullPlanet[1] - fullEarth[1];
            t[2] = fullPlanet[2] - fullEarth[2];

            //Convert to polar coordinates
            double r2 = Math.Sqrt(t[0] * t[0] + t[1] * t[1] + t[2] * t[2]);
            double a2 = Math.Acos(t[2] / r2);
            double b2 = Math.Atan2(t[1], t[0]);

            double x = a1 - a2;
            double y = b1 - b2;

            double err =Math.Sqrt(x * x + y * y)*180.0/Math.PI;
            Console.WriteLine(JD+","+key + "," + planet + "," + err);
        }

        static double jd2et(double jd)
        {
            return (jd - 2451545.0) / 365250.0;

        }
    }

}
