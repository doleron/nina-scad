
module bodySupport(side = 158, height = 52) {
   
    myRadius = side / (2 * sin(60));

    difference() {
        cylinder(r = myRadius, h = height, $fn=3, center=true);
        
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
        
        //horizontal side slots
        {
            h_slotWidth = side;
            h_slotHeight = height / 4;
            h_slotLength = side / 6;
            
            translate([-myRadius/2, 0, 0]) {
                cube([h_slotLength, h_slotWidth, h_slotHeight], center=true);
                translate([-h_slotHeight/2, 0, 0]) {
                    rotate(a=[-90, 0, -90])
                        cylinder(r = 2.1, h = 2* height, $fn=30, center=true);
                    translate([0, 0, (height + h_slotHeight)/5]) 
                        cube([5 * h_slotLength, h_slotHeight, 2*h_slotHeight/2], center=true);
                    translate([0, 0, -(height + h_slotHeight)/5]) 
                        cube([5 * h_slotLength, h_slotHeight, 2*h_slotHeight/2], center=true);
                }
            }
            
            rotate(a=[0, 0, 120]) 
                translate([-myRadius/2, 0, 0]) {
                cube([h_slotLength, h_slotWidth, h_slotHeight], center=true);
                translate([-h_slotHeight/2, 0, 0]) {
                    rotate(a=[-90, 0, -90])
                        cylinder(r = 2.1, h = 2* height, $fn=30, center=true);
                    translate([0, 0, (height + h_slotHeight)/5]) 
                        cube([5 * h_slotLength, h_slotHeight, 2*h_slotHeight/2], center=true);
                    translate([0, 0, -(height + h_slotHeight)/5]) 
                        cube([5 * h_slotLength, h_slotHeight, 2*h_slotHeight/2], center=true);
                }
            }
            
            rotate(a=[0, 0, 240]) 
                translate([-myRadius/2, 0, 0]) {
                cube([h_slotLength, h_slotWidth, h_slotHeight], center=true);
                translate([-h_slotHeight/2, 0, 0]) {
                    rotate(a=[-90, 0, -90])
                        cylinder(r = 2.1, h = 2* height, $fn=30, center=true);
                    translate([0, 0, (height + h_slotHeight)/5]) 
                        cube([5 * h_slotLength, h_slotHeight, 2*h_slotHeight/2], center=true);
                    translate([0, 0, -(height + h_slotHeight)/5]) 
                        cube([5 * h_slotLength, h_slotHeight, 2*h_slotHeight/2], center=true);
                }
            }
        }
        
        //center cylinder
        cylinder(r = myRadius/4, h = height + 2, $fn=30, center=true);
        
    //body's transversal bolt roles
    translate([78, 0, 0]) {
        translate([0, 0, height/4 + 2])
            rotate(a=[-90, 0, 0])
                cylinder(r = 2.1, h = height/2, $fn=30, center=true);
            
        translate([0, 0, -height/4 - 2])
            rotate(a=[-90, 0, 0])
                cylinder(r = 2.1, h = height/2, $fn=30, center=true);
    }
    rotate(a=[0, 0, 120])
        translate([78, 0, 0]) {
            translate([0, 0, height/4 + 2])
                rotate(a=[-90, 0, 0])
                    cylinder(r = 2.1, h = height/2, $fn=30, center=true);
                
            translate([0, 0, -height/4 - 2])
                rotate(a=[-90, 0, 0])
                    cylinder(r = 2.1, h = height/2, $fn=30, center=true);
        }
    rotate(a=[0, 0, 240])
        translate([78, 0, 0]) {
            translate([0, 0, height/4 + 2])
                rotate(a=[-90, 0, 0])
                    cylinder(r = 2.1, h = height/2, $fn=30, center=true);
                
            translate([0, 0, -height/4 - 2])
                rotate(a=[-90, 0, 0])
                    cylinder(r = 2.1, h = height/2, $fn=30, center=true);
        }
        
        translate([myRadius/2, 0, 0]) {
            cylinder(r = 3.1, h = height * 2, $fn=30, center=true);
            cube([10, side/4, h_slotHeight], center = true);
        }
        
        rotate(a=[0, 0, 120])
            translate([myRadius/2, 0, 0]) {
                cylinder(r = 3.1, h = height * 2, $fn=30, center=true);
                cube([10, side/4, h_slotHeight], center = true);
            }
        
        rotate(a=[0, 0, 240])
            translate([myRadius/2, 0, 0]) {
                cylinder(r = 3.1, h = height * 2, $fn=30, center=true);
                cube([10, side/4, h_slotHeight], center = true);
            }
    }
    
}

bodySupport();