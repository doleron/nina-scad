

module frameT1Joint() {
    width = 30;
    height = 40;
    length = 40;
    roleRadius = 3;
    fixingRoleRadius = 3.0 / 2;
    
    
    
    difference() {
        
        //main vertical structure
        
        translate([-width/2, -length/2, 0])
            cube([width, length, height]);
        
        translate([-1, length/2, 0])
            rotate(a=[-45, 0 , 0])
                cube([width + 3, sqrt(2)*height/2, sqrt(2)*height/2], center=true);
        
        //transversal roles
        {
            translate([width/2 + 1, -length/4, height/4])
                rotate(a=[0, -90, 0])
                    cylinder(r = roleRadius, h = width + 2, $fn=30);
            translate([width/2 + 1, -length/4, 3*height/4])
                rotate(a=[0, -90, 0])
                    cylinder(r = roleRadius, h = width + 2, $fn=30);
        translate([width/5, 0, 3*height/4])
            rotate(a=[-90, 0, 30])
                cylinder(r = roleRadius, h = width + 2, $fn=30);    
        }
        
        
        //fixing roles
        {
                      
            translate([0, -length/2 -1, height/4])
                rotate(a=[-90, -90, 0])
                    cylinder(r = fixingRoleRadius, h = length/3, $fn=30);    
            translate([0, -length/2 -1, 3*height/4])
                rotate(a=[-90, -90, 0])
                    cylinder(r = fixingRoleRadius, h = length/3, $fn=30);
            
            translate([0, -length/4, 3*height/4])
                cylinder(r = fixingRoleRadius, h = length/3, $fn=30);   
            translate([0, -length/4, -1])
                cylinder(r = fixingRoleRadius, h = length/3, $fn=30);  
           
            translate([-width/2 - 1, length/8, 3*height/4])
                rotate(a=[0, -90, -150])
                    cylinder(r = fixingRoleRadius, h = width/2, $fn=30);
     translate([-width/2 + 3, 7, 3*height/4])
                rotate(a=[0, -90, 30])
                    cylinder(r = 2.2*fixingRoleRadius, h = width/2, $fn=30);
            
            translate([0, length/4, 3*height/4])
                cylinder(r = fixingRoleRadius, h = length/3, $fn=30); 
           
                        
        }

    }
            
    
    translate([width/2, -length/2 + 5 , height/2])
        rotate(a=[90, 0, 90])
            scale(0.7)
                linear_extrude(height = 1, center = true, convexity = 1000, twist = 0)
                    text("nina-d");
    translate([width/2, -length/4 + 5 , height/2 - 6])
        rotate(a=[90, 0, 90])
            scale(0.5)
                linear_extrude(height = 1, center = true, convexity = 1000, twist = 0)
                    text("robot"); 
    
}

frameT1Joint();

