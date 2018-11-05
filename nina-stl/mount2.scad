arm_mount();

module arm_mount()
{
	$fs = 0.1;

	wall_thickness = 1.6;
	height = 21;
	frame_width = height;
	frame_height = height * 3 / 2;
    height_offset = 2;
		
	translate([-frame_width/2, 0, 0])
	{
		difference() {
			union() {
                
                    cube([frame_width, wall_thickness, frame_height]); 
                    cube([wall_thickness, frame_width, frame_height]);
                
				translate([frame_width - wall_thickness, 0, 0]) 
					cube([wall_thickness, frame_width, frame_height]);
                
                //structure above the line to connect
				translate([0, 0, -2]) {
                    cube([frame_width, wall_thickness, 4]); 
                    
                    cube([wall_thickness, frame_width, 4]);
                    
                    translate([frame_width - wall_thickness, 0, 0]) 
                        cube([wall_thickness, frame_width, 4]);
                }
			}
		
			rotate([90, 0, 0])
				translate([frame_width/2, height + height_offset, -wall_thickness - 1])
					cylinder(r=1.6, h=wall_thickness+2);
            
            translate([-1, 1.75 * frame_width, 0])
                rotate([45, 0, 0])
                    cube(size=[frame_width + 2, frame_width, 2*frame_height]);
			
		}
        
	}
}
