$fn = 64;

PvcTube();

module PvcTube(l = 50, center) {
    linear_extrude(l, center=center) {
        difference() {
            circle(d = 16.1);
            circle(d = 14);
        }
    }
}
