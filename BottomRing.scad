use <MetricThread.scad>

$fn = 128;

BottomRing();

module BottomRing() {
    union() {
        rotate_extrude() {
            polygon([
                [9.6, 0], 
                [8.6, 0], 
                [8.6, 2], 
                [10.5, 10], 
                [11.6, 10],
                [11.6, 0], 
                [15, 0], 
                [15, -12], 
                [10.1, -12], 
                [9.6, -11]]);
        }
        difference() {
            metric_thread(diameter= 25.6, pitch= 2, length=9.5);
            translate([0,0,-1]) cylinder(d=21, h=12);
        }
        
        translate([0,0,-12]) for (a=[0:7.5:360]) {
            rotate(a) {
                translate([10,10,.5]) cube([1,1,11]);
            }
        }
    }
}