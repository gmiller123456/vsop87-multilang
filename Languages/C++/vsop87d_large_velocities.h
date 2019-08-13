class vsop87d_large_velocities{
   public:
   void getEarth(double t,double temp[]);
   void getJupiter(double t,double temp[]);
   void getMars(double t,double temp[]);
   void getMercury(double t,double temp[]);
   void getNeptune(double t,double temp[]);
   void getSaturn(double t,double temp[]);
   void getUranus(double t,double temp[]);
   void getVenus(double t,double temp[]);

   private:
   double earth_l(double t);
   double earth_b(double t);
   double earth_r(double t);
   double jupiter_l(double t);
   double jupiter_b(double t);
   double jupiter_r(double t);
   double mars_l(double t);
   double mars_b(double t);
   double mars_r(double t);
   double mercury_l(double t);
   double mercury_b(double t);
   double mercury_r(double t);
   double neptune_l(double t);
   double neptune_b(double t);
   double neptune_r(double t);
   double saturn_l(double t);
   double saturn_b(double t);
   double saturn_r(double t);
   double uranus_l(double t);
   double uranus_b(double t);
   double uranus_r(double t);
   double venus_l(double t);
   double venus_b(double t);
   double venus_r(double t);
};
