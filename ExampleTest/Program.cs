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
            Console.WriteLine(90 - b[1] * 180 / Math.PI);
            Console.WriteLine(b[2] * 180 / Math.PI + 360);
        }

        static void displayDms(double d)
        {
            double t = 90 - d * 180 / Math.PI;
            double deg = Math.Truncate(t);
            t = Math.Abs(t) - Math.Abs(deg);
            t *= 60;
            double min = Math.Truncate(t);
            t -= min;
            double sec = t * 60;
            Console.WriteLine(deg + "d " + min + "m " + sec);
        }

        static void displayHms(double h)
        {
            double t = h * 180 / Math.PI+360;
            t /= 15.0;
            Console.WriteLine(t);
            double hours = Math.Truncate(t);
            t = Math.Abs(t) - Math.Abs(hours);
            t *= 60;
            double min = Math.Truncate(t);
            t -= min;
            double sec = t * 60;
            Console.WriteLine(hours + "h " + min + "m " + sec);
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

        static double[] rotvsop2J2000(double[] x)
        {
            /* From VSOP87.doc
              X        +1.000000000000  +0.000000440360  -0.000000190919   X
              Y     =  -0.000000479966  +0.917482137087  -0.397776982902   Y
              Z FK5     0.000000000000  +0.397776982902  +0.917482137087   Z VSOP87A
            */
            double[] t = new double[3];
            t[0] = x[0] + x[2] * -0.000000190919;
            t[1] = x[0] * -0.000000479966 + x[1] * 0.917482137087 + x[2] * -0.397776982902;
            t[2] = x[1] * 0.397776982902 + x[2] * 0.917482137087;


            return t;
        }

        static void testVenus()
        {
            double jd = 2451545.000000 + (37.0 + 32.184) / 24.0 / 60.0 / 60.0; 
            double t = jd2et(jd);
            double[] earth = vsop87a_full.getEarth(t);
            double[] venus = vsop87a_full.getVenus(jd2et(2451545.000000 - 9.460958 / 60.0 / 24.0));
            double[] jplvenus = { -7.254387515234614E-01, -3.545003280053188E-02, 4.122031886718323E-02 };
            double[] jplearth = { -1.842715550034061E-01, 9.644459624382810E-01, 2.020509819636803E-04 };


            displayCart(venus);
            displayCart(earth);

            venus = sub(venus, earth);
            double[] venus2 = rotvsop2J2000(venus);
            venus = rotate(venus, 23.4351669673 * Math.PI / 180.0);
            venus = toPolar(venus);
            displayPolar(venus);

            venus2 = toPolar(venus2);
            displayPolar(venus2);

            jplvenus = sub(jplvenus, jplearth);
            jplvenus = rotate(jplvenus, 23.4351669673 * Math.PI / 180.0);
            jplvenus = toPolar(jplvenus);
            displayPolar(jplvenus);

        }

        static void testMoon()
        {
            double jd = 2451545.000000 + (37.0 + 32.184) / 24.0 / 60.0 / 60.0;
            double jd2 = 2451545.000000 + (37.0 + 32.184-1.342) / 24.0 / 60.0 / 60.0;
            double t = jd2et(jd);
            double t2 = jd2et(jd2);
            double[] earth = vsop87a_full.getEarth(t);
            double[] moon = vsop87a_full.getMoon(vsop87a_full.getEarth(t2), vsop87a_full.getEmb(t2));

            moon = sub(moon, earth);
            double dist = Math.Sqrt(moon[0] * moon[0] + moon[1] * moon[1] + moon[2] * moon[2]);
            Console.WriteLine(dist);

            moon = rotvsop2J2000(moon);
            moon = toPolar(moon);
            displayPolar(moon);

            displayHms(moon[2]);
            displayDms(moon[1]);

            Console.WriteLine("\r\n-10.90338\r\n222.45893\r\n");
            Console.WriteLine("\r\n14 49 50.14\r\n-10 54 12.2\r\n");

        }

        static void Main(string[] args)
        {
            testMoon();

            Console.ReadLine();
        }
    }
}
