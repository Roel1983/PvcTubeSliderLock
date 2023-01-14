use <MetricThread.scad>

$fn = 128;

TopRing();

module TopRing() {
    union() {
        difference() {
            cylinder(d=30, h=13.5);
            translate([0,0,-1]) {
                metric_thread(
                    diameter=26, 
                    pitch= 2, 
                    length=12,
                    internal=true);
            }
            cylinder(r=8.6, h = 14);
        }
        for (a=[0:7.5:360]) {
            rotate(a) {
                translate([10,10,1.5]) cube([1,1,11]);
            }
        }
    }
}
