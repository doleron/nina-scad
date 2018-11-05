use <nut_trap.scad>

$fn = 30;

module robotTopArm(armWidth = 24,
    armLength = 90,
    armHeight = 20,
    armWallWidth = 4) {
    color([1.0, 1.0, 1.0])
    
    difference() {
        union() {
            //main structure
            translate([0, 0, armLength/2]) 
                cube([armWidth, armHeight, armLength], center = true);
            
            translate([-armWidth/2, 0, armLength]) 
                rotate(a=[0, 90, 0]) 
                    cylinder(r = armHeight/2, h = armWidth);
            
            //motor coupling pin
            translate([armWidth/2 - 4, 0, armLength]) 
                rotate(a=[0, 90, 0]) 
                    cylinder(r = 3.9, h = 14);
            
            //motor coupling pin base
            translate([armWidth/2 - 2, 0, armLength]) 
                rotate(a=[0, 90, 0]) 
                    cylinder(r = 6, h = 5);
            
            //diagonal rod support left
            translate([armWidth/2 - 1, 0, armHeight/2]) 
                rotate(a=[0, 90, 0]) 
                    cylinder(r1 = armHeight/2, r2 = armHeight/4, h = armWidth/3 + 1);
            
            //diagonal rod support right
            translate([-armWidth/2 + 1, 0, armHeight/2]) 
                rotate(a=[-180, 90, 0]) 
                    cylinder(r1 = armHeight/2, r2 = armHeight/4, h = armWidth/3 + 1);
        }
        
        //gear role
        translate([-armWidth/2 -1, 0, armLength]) 
            rotate(a=[0, 90, 0]) 
                cylinder(r = 5.1, h = 5);
        
        //inner space cube
        translate([0, armWallWidth/2 + 1, (armLength - armHeight)/2 - 1]) {
                    cube([armWidth - (2*armWallWidth), armHeight - (armWallWidth) + 2, armLength - armHeight + 2], center = true);
        }
        
        //diagonal rod bolt role
        translate([-armWidth, 0, armHeight/2])
            rotate(a=[0, 90, 0])
                cylinder(r = 1.7, h = armWidth * 2.5);
        
        //diagonal rod bolt nut trap left
        translate([armWidth/2 -5, 0, armHeight/2])
            rotate(a=[0, 90, 0]) 
                nut_trap(h = 3.2);
        
        //diagonal rod bolt nut trap right
        translate([-armWidth/2 + 1, 0, armHeight/2])
            rotate(a=[0, 90, 0]) 
                nut_trap(h = 3.2);
        
    }
    //end stop pin contact
    translate([0, armHeight/2 + 5 - 2, armLength])
        cube([2.2, 10 + 10, 6], center = true);
    
    //side trail to angle measure - left
    translate([armWidth/2 - 1, 0, armHeight + 2])
        cube([2, 1.2, armLength - armHeight - 12]);
    
    //side trail to angle measure - left
    translate([-armWidth/2 - 1, 0, armHeight + 2])
        cube([2, 1.2, armLength - armHeight - 12]);
        
}

robotTopArm();
