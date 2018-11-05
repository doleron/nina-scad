
module robotTube(height = 8) {
    side = 158;
    myRadius = side / (2 * sin(60));
    r = 25*myRadius/100;
    echo(r * 2 - 0.2);
    L = 2*r + 5;

    R = 3 * L/2;
    //echo(R);
    H = 2*sqrt(R*R - L*L/4);

    wallThickness = 1.2;
       
    difference() {
        union() {
            difference() {
                union() {
                    cylinder(r = r - 0.2, h = height, $fn = 90);
                    cube([r * 2 + 5, r * 2 + 5, 1], center=true);
                }
                        
                translate([0, 0, 1])
                    cylinder(r = r - 0.2 - wallThickness, h = height + 1,  $fn = 90);  
                
                translate([0, 0, -1])
                    cylinder(r = 3.6, h = 11, $fn = 90);
                
            }
            translate([21/2, 0, 0])
                cylinder(r = 2, h = 3.5, $fn = 90);  
            translate([-21/2, 0, 0])
                cylinder(r = 2, h = 3.5, $fn = 90);    
            translate([21/2, 12.5, 0])
                cylinder(r = 2, h = 3.5, $fn = 90);  
            translate([-21/2, 12.5, 0])
                cylinder(r = 2, h = 3.5, $fn = 90);  
        }  
        
        translate([21/2, 0, -1])
            cylinder(r = 0.9, h = 6, $fn = 90);  
        translate([-21/2, 0, -1])
            cylinder(r = 0.9, h = 6, $fn = 90);    
        translate([21/2, 12.5, -1])
            cylinder(r = 0.9, h = 6, $fn = 90);  
        translate([-21/2, 12.5, -1])
            cylinder(r = 0.9, h = 6, $fn = 90);  
        
    }
}

        translate([0, 0, 0.5])
robotTube();
    
    