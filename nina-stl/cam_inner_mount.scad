
module robotTube(height = 165) {
    side = 158;
    myRadius = side / (2 * sin(60));
    r = 25*myRadius/100;
    L = 2*r + 5;

    R = 3 * L/2;
    //echo(R);
    H = 2*sqrt(R*R - L*L/4);

    wallThickness = 2;

    err = 0.03;
    translate([0, 0, H/2 - err*R])
        difference() {
            sphere(r = R, $fn=150);
            translate([0, 0, (1 + err)*R - H/2])
                cube([2*R, 2*R, 2*R], center = true);
        }


    translate([0, 0, -1])
        difference() {
            cylinder(r = r, h = height, $fn = 90);
            cylinder(r = r - wallThickness, h = height + 1,  $fn = 90);
            translate([0, r, height / 4 + 10])
                cube([r/2, wallThickness * 2 + 1, height / 3], center = true);
            rotate(a=[0, 0, 120])   
                translate([0, r, height / 4 + 10])
                    cube([r/2, wallThickness * 2 + 1, height / 3], center = true);
            rotate(a=[0, 0, 240])   
                translate([0, r, height / 4 + 10])
                    cube([r/2, wallThickness * 2 + 1, height / 3], center = true);
            
            //top roles
            translate([-10, 0, height - 10])
                rotate(a = [90, 0, 0])
                    cylinder(r = 3, h = 2 * r, $fn=30, center = true);
            translate([10, 0, height - 10])
                rotate(a = [90, 0, 0])
                    cylinder(r = 3, h = 2 * r, $fn=30, center = true);
            
            translate([0, -10, height - 30])
                rotate(a = [90, 0, 90])
                    cylinder(r = 3, h = 2 * r, $fn=30, center = true);
            translate([0, 10, height - 30])
                rotate(a = [90, 0, 90])
                    cylinder(r = 3, h = 2 * r, $fn=30, center = true);
    
        }
            
        
}

robotTube();
    
    