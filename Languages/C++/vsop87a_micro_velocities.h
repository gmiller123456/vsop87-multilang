class vsop87a_micro_velocities{
   public:
   void getEarth(double t,double temp[]);
   void getEmb(double t,double temp[]);
   void getJupiter(double t,double temp[]);
   void getMars(double t,double temp[]);
   void getMercury(double t,double temp[]);
   void getNeptune(double t,double temp[]);
   void getSaturn(double t,double temp[]);
   void getUranus(double t,double temp[]);
   void getVenus(double t,double temp[]);
   void getMoon(double earth[], double emb[],double temp[]);

   private:
   double earth_x(double t);
   double earth_y(double t);
   double earth_z(double t);
   double emb_x(double t);
   double emb_y(double t);
   double emb_z(double t);
   double jupiter_x(double t);
   double jupiter_y(double t);
   double jupiter_z(double t);
   double mars_x(double t);
   double mars_y(double t);
   double mars_z(double t);
   double mercury_x(double t);
   double mercury_y(double t);
   double mercury_z(double t);
   double neptune_x(double t);
   double neptune_y(double t);
   double neptune_z(double t);
   double saturn_x(double t);
   double saturn_y(double t);
   double saturn_z(double t);
   double uranus_x(double t);
   double uranus_y(double t);
   double uranus_z(double t);
   double venus_x(double t);
   double venus_y(double t);
   double venus_z(double t);
};
