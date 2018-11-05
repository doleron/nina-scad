motorSupport();

module motorSupport() {

    $fn = 30;
	wall_thickness = 3;
	motor_height = 42;
	height = motor_height / 2;
    height_offset = 2;
	frame_width = motor_height + 2*height_offset;
	bolt = 3.2;
		
    translate([-frame_width/2, 0, 0]) 
        difference() {
            union() {
                
                cube([frame_width, wall_thickness, frame_width]); 
                
                translate([-2, -(frame_width - wall_thickness)/2, 0]) 
                    cube([wall_thickness - 1, frame_width, frame_width]);
                
                translate([frame_width, -(frame_width - wall_thickness)/2, 0]) 
                    cube([wall_thickness - 1, frame_width, frame_width]);
                
                translate([0, 0, -2])  {
                    cube([frame_width, wall_thickness, 4]); 
                    translate([-2, -(frame_width - wall_thickness)/2, 0]) 
                        cube([wall_thickness - 1, frame_width, 4]);
                    
                    translate([frame_width, -(frame_width - wall_thickness)/2, 0]) 
                        cube([wall_thickness - 1, frame_width, 4]);
                }
            }
        
            rotate([90, 0, 0]) {
                translate([frame_width/2, height + height_offset, -wall_thickness - 1]) {
                    translate([15.5, 15.5, 0])
                        cylinder(r=bolt/2, h= wall_thickness + 2);
                    translate([-15.5, 15.5, 0])
                        cylinder(r=bolt/2, h= wall_thickness + 2);
                    translate([15.5, -15.5, 0])
                        cylinder(r=bolt/2, h= wall_thickness + 2);
                    translate([-15.5, -15.5, 0])
                        cylinder(r=bolt/2, h= wall_thickness + 2);

                    cylinder(r=13.5, h = wall_thickness + 2);
                }
            }
            
            //wall cuts
            rotate([-25, 0, 0]) 
                translate([-wall_thickness, -frame_width, -2]) 
                    cube([frame_width + 2*wall_thickness, frame_width/2, frame_width]);
            
            rotate([25, 0, 0]) 
                translate([-wall_thickness, frame_width/2 + wall_thickness, -2]) 
                    cube([frame_width + 2*wall_thickness, frame_width/2, frame_width]);
            
        }
}
