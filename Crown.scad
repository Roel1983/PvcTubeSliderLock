$fn = 128;

Crown(is_printable = true);

module Crown(
    is_printable = false
) {
    if (is_printable) {
        rotate(180, [1, 0, 0]) Crown(is_printable = false);
    } else {
        difference() {
            rotate_extrude() {
                polygon([
                    [9.5, 6], 
                    [8.5, 2], 
                    [8.05, 2],
                    [8.05, 5],
                    [8.5, 6],
                    [8.5, 11],
                    [9.5, 11], 
                ]);
            }
            for(a=[0:60:180]) {
                rotate(a) cube([1,30,16], true);
            }
        }
    }
}
