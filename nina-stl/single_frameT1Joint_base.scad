

module frameT1Joint() {
    radius = 20;
    height = 20;
    roleRadius = 3;
    fixingRoleRadius = 3.0 / 2;
    
    difference() {
        
        //main vertical structure
        union(){
            difference() {
                cylinder(r = radius, h = 1*height, $fn=120);
                   
                verticalRolePosition = -sqrt(2)/4*radius;
                translate([verticalRolePosition, verticalRolePosition, -1])
                    cylinder(r = roleRadius, h = 1*height + 2, $fn=30);
                translate([0, 0, -1])
                    cube([radius + 1, radius + 1, 1*height + 2]); 
                translate([-radius, 0, -1])
                    cube([radius + 1, radius + 1, 1*height + 2]);
                translate([0, -radius, -1])
                    cube([radius + 1, radius + 1, 1*height + 2]);
            }
            translate([0, -radius, 0])
                cube([radius, radius, 1*height]);  
            translate([-radius, 0, 0])
                cube([radius, radius, 1*height]);   
        } 
        
        //side cubes roles
        {
            translate([2*height - 2, -radius/2, height/2])
                rotate(a=[0, -90, 0])
                    cylinder(r = roleRadius, h = 2*height + 2, $fn=30);
            
            translate([-radius/2, -2, height/2])
                rotate(a=[-90, 0, 0])
                    cylinder(r = roleRadius, h = 2*height + 2, $fn=30); 
        }
        
        //fixing roles
        {
            translate([-sqrt(2)*height/2, -sqrt(2)*radius/2, height/2])
                    rotate(a=[-90, 0, -45])
                        cylinder(r = fixingRoleRadius, h = height/2, $fn=30);
            translate([-sqrt(2)*height/2, -sqrt(2)*radius/2, 3 *height/2])
                    rotate(a=[-90, 0, -45])
                        cylinder(r = fixingRoleRadius, h = height/2, $fn=30);
            
            translate([height/2, 1, height/2])
                    rotate(a=[90, 0, 0])
                        cylinder(r = fixingRoleRadius, h = height + 2, $fn=30);
            
            translate([-height - 1, height/2, height/2])
                    rotate(a=[90, 0, 90])
                        cylinder(r = fixingRoleRadius, h = height + 2, $fn=30);
                        
        }

    }
            
    
}

frameT1Joint();
