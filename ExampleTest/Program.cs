using System;

namespace ExampleTest
{
    class Program
    {
        static double jd2et(double jd)
        {
            return (jd - 2451545.0) / 365250.0;

        }

        static double[] toPolar(double[] xyz)
        {
            double[] t = new double[3];
            t[0] = Math.Sqrt(xyz[0] * xyz[0] + xyz[1] * xyz[1] + xyz[2] * xyz[2]);
            t[1] = Math.Acos(xyz[2] / t[0]);
            t[2] = Math.Atan2(xyz[1], xyz[0]);

            //RA = Math.Atan2(ye, xe)
            //Dec = Math.Atan2(ze, sqrt(xe * xe + ye * ye))
            //t[1] = Math.Atan2(xyz[1], xyz[0]);
            //t[2] = Math.Atan2(xyz[2], Math.Sqrt(xyz[0] * xyz[0] + xyz[1] * xyz[1]));

            return t;
        }

        static double[] sub(double[] a, double[] b)
        {
            double[] t = new double[3];
            t[0] = a[0] - b[0];
            t[1] = a[1] - b[1];
            t[2] = a[2] - b[2];
            return t;
        }

        static void displayPolar(double[] b)
        {
            //Console.WriteLine(b[0]);
            Console.WriteLine(90- b[1] * 180 / Math.PI);
            Console.WriteLine(b[2] * 180 / Math.PI +360);
        }

        static void displayCart(double[] b)
        {
            Console.WriteLine(b[0]);
            Console.WriteLine(b[1]);
            Console.WriteLine(b[2]);
        }

        static double[] rotate(double[] x, double angle)
        {
            double[] t = new double[3];
            t[0] = x[0];
            t[1] = x[1] * Math.Cos(angle) - x[2] * Math.Sin(angle);
            t[2] = x[1] * Math.Sin(angle) + x[2] * Math.Cos(angle);

            return t;

        }

        static void Main(string[] args)
        {
            double jd = 2451545.000000;
            double t = jd2et(jd);
            double[] earth = vsop87a_full.getEarth(t);
            double[] venus = vsop87a_full.getVenus(t);
            double[] jplvenus = { -7.254387515234614E-01, -3.545003280053188E-02, 4.122031886718323E-02 };
            double[] jplearth = { -1.842715550034061E-01, 9.644459624382810E-01, 2.020509819636803E-04 };

            
            displayCart(venus);
            displayCart(earth);

            venus = sub(venus, earth);
            venus = rotate(venus, 23.4351669673 * Math.PI / 180.0);
            venus = toPolar(venus);
            displayPolar(venus);
            

            jplvenus = sub(jplvenus, jplearth);
            jplvenus = rotate(jplvenus, 23.4351669673 * Math.PI / 180.0);
            jplvenus = toPolar(jplvenus);
            displayPolar(jplvenus);

            Console.ReadLine();
        }
    }
}
