Computes the positions of the planets with an SQL query.  Standard ASCII SQL should work on most systems.

1.  Create the tables, with createtables.sql

2.  Insert data with insert.sql.

3.  Compute the position with a query similar to:
set @T=(@jd - 2451545.0) / 365250.0;
select sum(a*cos(b+c*@T)*power(@T,exponent)) from vsop87 where version='vsop87a' and planet = 'earth' and variable='x';

(replace @T with Julian centuries from J2000 if variables aren't supported).

There is no standard SQL query to compute the velocities (easily).