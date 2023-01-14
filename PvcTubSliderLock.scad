use <TopRing.scad>
use <BottomRing.scad>
use <Crown.scad>
use <PvcTube.scad>

translate([0, 0,  20]) TopRing();
translate([0, 0,   0]) Crown();
translate([0, 0, -20]) BottomRing();
%PvcTube(80, center =true);
