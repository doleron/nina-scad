
$fn = 90;

module penSupport() {
    base = 1.6;
    supportHeight = 14;
    endEffectorHeight = 6;
    difference() {
        union() {
            cylinder(r = 6.5, h = base + supportHeight + endEffectorHeight);    
            cylinder(r = 17, h = base);          
            
        }
        translate([0, 0, -1]) 
        //5.2 fits with slip. Use less to lock the pen
            cylinder(r = 5.2, h = base + supportHeight + endEffectorHeight + 2);  
        
        translate([0, 12.5, -1]) 
            cylinder(r = 1.7, h = base + 2);
        
        rotate(a=[0, 0, 60])
            translate([0, 12.5, -1]) 
                cylinder(r = 1.7, h = base + 2);
        
        rotate(a=[0, 0, 120])
            translate([0, 12.5, -1]) 
                cylinder(r = 1.7, h = base + 2);
        
        rotate(a=[0, 0, 180])
            translate([0, 12.5, -1]) 
                cylinder(r = 1.7, h = base + 2);
        
        rotate(a=[0, 0, 240])
            translate([0, 12.5, -1]) 
                cylinder(r = 1.7, h = base + 2);
        
        rotate(a=[0, 0, 300])
            translate([0, 12.5, -1]) 
                cylinder(r = 1.7, h = base + 2);
                 
        translate([4, 0, base + endEffectorHeight + 6]) 
            rotate(a=[0, 90, 0])
                cylinder(r = 1.5, h = 5);  
        
        rotate(a=[0, 0, 120])
            translate([4, 0, base + endEffectorHeight + 6]) 
                rotate(a=[0, 90, 0])
                    cylinder(r = 1.5, h = 5); 
        
        rotate(a=[0, 0, 240])
            translate([4, 0, base +  endEffectorHeight + 6]) 
                rotate(a=[0, 90, 0])
                    cylinder(r = 1.5, h = 5); 
        
    }
}

penSupport();