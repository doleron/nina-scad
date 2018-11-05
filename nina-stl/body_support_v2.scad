
module bodySupport(side = 158, height = 10) {
   
    myRadius = side / (2 * sin(60));

    difference() {
        cylinder(r = myRadius, h = height, $fn=3, center=true);
        
        cylinder(r = 25*myRadius/100, h = height + 2, $fn=60, center=true);
        
        //vertical side slots
        {
            v_slotWidth = side / 4;
            v_slotHeight = height + 6;
            v_slotLength = side / 5;
            translate([-myRadius/2, 0, -0])
                cube([v_slotLength, v_slotWidth, v_slotHeight], center=true);
            rotate(a=[0, 0, 120])
                translate([-myRadius/2, 0, -0])
                    cube([v_slotLength, v_slotWidth, v_slotHeight], center=true);
            rotate(a=[0, 0, 240])
                translate([-myRadius/2, 0, -0])
                    cube([v_slotLength, v_slotWidth, v_slotHeight], center=true);
        }
        
    //body's transversal bolt roles
    translate([78, 0, 0]) {
        rotate(a=[-90, 0, 0])
            cylinder(r = 2, h = 20, $fn=30, center=true);
            
       
    }
    rotate(a=[0, 0, 120])
        translate([78, 0, 0]) {
            rotate(a=[-90, 0, 0])
                cylinder(r = 2, h = 20, $fn=30, center=true);
                
            
        }
    rotate(a=[0, 0, 240])
        translate([78, 0, 0]) {
            rotate(a=[-90, 0, 0])
                cylinder(r = 2, h = 20, $fn=30, center=true);
                
            
        }
        
        translate([myRadius/2, 0, 0]) {
            cylinder(r = 3.1, h = height * 2, $fn=30, center=true);
        }
        
        rotate(a=[0, 0, 120])
            translate([myRadius/2, 0, 0]) {
                cylinder(r = 3.1, h = height * 2, $fn=30, center=true);
            }
        
        rotate(a=[0, 0, 240])
            translate([myRadius/2, 0, 0]) {
                cylinder(r = 3.1, h = height * 2, $fn=30, center=true);
            }
    }
    
}

bodySupport();