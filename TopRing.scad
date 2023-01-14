use <MetricThread.scad>

$fn = 128;

TopRing(
    is_printable = true
);

module TopRing(
    is_printable = false
) {
    if (is_printable) {
        rotate(180, [1, 0, 0]) TopRing(is_printable = false);
    } else {
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
}
