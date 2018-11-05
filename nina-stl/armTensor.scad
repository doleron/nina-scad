$fn = 60;

module armTensor (height = 12, thickness = 1.4) {
    
    difference() {
        union() {
                        
            //right side cylinder
            translate([0, 7, height/2]) 
                rotate([0, 90, 0])
                    cylinder(r = height/2, h = thickness);
            
            //left side cylinder
            translate([0, -7, height/2]) 
                rotate([0, 90, 0])
                    cylinder(r = height/2, h = thickness);
            
            //center cube
            translate([0, -7, 0]) 
                cube([thickness, 14, height]);
            
            //center cylinder
            cylinder(r=4.5, h = height);
            
            //center bolt cylinder 
            translate([thickness, 0, height/2]) 
                rotate([0, 90, 0])
                    cylinder(r=2.5, h = 4);
        }
            
        //center cylinder role
        translate([0, 0, -1]) 
            cylinder(r=4.5 - 1.1, h = height + 2);
        
        //left role
        translate([-2, -8, height/2]) 
            rotate([0, 90, 0])
                cylinder(r=3.0/2 + 0.1, h = 6);
        
        //right role
        translate([-thickness, 8, height/2]) 
            rotate([0, 90, 0])
                cylinder(r=3.0/2 + 0.1, h = 6);
        
        //upside cut
        translate([-6, -14, -1]) 
            cube([6, 28, height+2]);
            
        //center bolt role 
        translate([1, 0, height/2]) 
            rotate([0, 90, 0])
                cylinder(r=3.0/2 - 0.1, h = 6);
    
    }
    
}

armTensor();


//rotate([0, 0, 180])
//    armTensor();