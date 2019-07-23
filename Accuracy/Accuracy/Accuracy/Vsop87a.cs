using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Accuracy
{
    interface Vsop87a
    {
         double[] getEarth(double t);
         double[] getEmb(double t);
         double[] getJupiter(double t);
         double[] getMars(double t);
         double[] getMercury(double t);
         double[] getNeptune(double t);
         double[] getSaturn(double t);
         double[] getUranus(double t);
         double[] getVenus(double t);
         double[] getMoon(double[] earth, double[] emb);
    }
}
