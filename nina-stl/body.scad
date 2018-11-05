use <top_arm.scad>
use <mount.scad>
use <mount2.scad>

$fn = 30;

armWidth = 24;
armTotalWidth = armWidth * 5 / 3;
motorAdapterWidth = 34;
stepperMountPosition = armTotalWidth/4 + motorAdapterWidth;
stepperMountWidth = 35;
plateWidth = 2 * (stepperMountPosition + stepperMountWidth);
//echo(plateWidth);
height_offset = 10;

module robotBody(height = 10, wallWidth = 6) {
    //color([0, 0, 1.0])
    difference() {
        union() {
            translate([-plateWidth/2, -wallWidth/2, -(height + height_offset)/2]) 
                cube([2 * (stepperMountPosition + stepperMountWidth), wallWidth, height + height_offset]);
            
            translate([-armWidth/2 - 5, wallWidth/2, 0]) 
                rotate(a=[180, 90, -90]) 
                    arm_mount();
                    
            translate([stepperMountPosition, wallWidth/2, 0])
                rotate(a=[0, -90, -90])
                    motorSupport();
                
        }
        
        //fixing roles
        translate([stepperMountPosition + stepperMountWidth/2, 0, 0]) {
            translate([0, 0, height/4 + 2]) {
                rotate(a=[-90, 0, 30]) 
                    cylinder(r = 5, h = 2*wallWidth);
                    
                rotate(a=[-90, 0, 30]) 
                    cylinder(r = 2.1, h = 5*wallWidth, center = true);
            }
        
            translate([0, 0, -height/4 - 2]) {
                rotate(a=[-90, 0, 30]) 
                    cylinder(r = 5, h = 2*wallWidth);
                    
                rotate(a=[-90, 0, 30]) 
                    cylinder(r = 2.1, h = 5*wallWidth, center = true);
            }
        }
        
        translate([-(stepperMountPosition + stepperMountWidth/2), 0, 0]) {
            translate([0, 0, height/4 + 2]) {
                rotate(a=[-90, 0, -30]) 
                    cylinder(r = 5, h = 2*wallWidth);
                    
                rotate(a=[-90, 0, -30]) 
                    cylinder(r = 2.1, h = 5*wallWidth, center = true);
            }
        
            translate([0, 0, -height/4 - 2]) {
                rotate(a=[-90, 0, -30]) 
                    cylinder(r = 5, h = 2*wallWidth);
                    
                rotate(a=[-90, 0, -30]) 
                    cylinder(r = 2.1, h = 5*wallWidth, center = true);
            }
        }
        
        //motor electrical interface slot
        translate([stepperMountPosition + 26, 0, 0])
            cube([7, wallWidth + 1, 16], center = true);
        
        //endpoint switch traills top
        translate([0, 0, (height + height_offset)/4]) {
            translate([3, wallWidth - 2, 0])
                cube([18.5, wallWidth, 35*height/100], center = true);
            translate([4, 0, 0])
                cube([1, wallWidth + 1, 35*height/100 - 2], center = true);
            translate([-4, 0, 0])
                cube([1, wallWidth + 1, 35*height/100 - 2], center = true);
            translate([9, 0, 0])     
                cube([3, wallWidth + 1, 35*height/100 - 2], center = true);
        }
        
        //endpoint switch traills bottom
        translate([0, 0, -(height + height_offset)/4]) {
            translate([3, wallWidth - 2, 0])
                cube([18.5, wallWidth, 35*height/100], center = true);
            translate([4, 0, 0])
                cube([1, wallWidth + 1, 35*height/100 - 2], center = true);
            translate([-4, 0, 0])
                cube([1, wallWidth + 1, 35*height/100 - 2], center = true);
            translate([9, 0, 0])     
                cube([3, wallWidth + 1, 35*height/100 - 2], center = true);
        }
        
    }      
}

nema17Height = 42;
robotBody(height = nema17Height + 10);
