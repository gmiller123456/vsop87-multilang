
--position
set @T=(@jd - 2451545.0) / 365250.0;
select sum(a*cos(b+c*@T)*power(@T,exponent)) from vsop87 where version='vsop87a' and planet = 'earth' and variable='x';

--velocity
select sum((power(@T,exponent-1)*exponent*a*cos(b+c*@T) - power(@T,exponent)*a*c*sin(b+c*@T))*power(@T,exponent))  where version='vsop87a' and planet = 'earth' and variable='x';
