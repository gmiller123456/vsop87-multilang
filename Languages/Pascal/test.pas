program Test;
uses Math,vsop87a_nano;
var result:array[0..5] of Double=(0,0,0,0,0,0);

function jd2et(jd:double): double;
begin
	jd2et:=(jd - 2451545.0) / 365250.0;

end;


begin
     vsop87a_nano_getMercury(jd2et(2451545.0),result);
     vsop87a_nano_getMercury(jd2et(2415020.0),result);
	WriteLn('Done');
end.
