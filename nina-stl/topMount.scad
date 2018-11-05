
module bodySupport(side = 158, height = 20 + 2*(3 + 3.1)) {
    
    transversalBoltRole = 3.1;
    fixinigRoles = 2.7;
   
    myRadius = side / (2 * sin(60));

    difference() {
        cylinder(r = 8*myRadius/10, h = height, $fn=300, center=true);
                        
    //body's transversal bolt roles
    translate([0, myRadius/4, -height / 2 + transversalBoltRole + 3 + 20])
        rotate(a=[-90, 0, -90])
            cylinder(r = transversalBoltRole, h = 2 * myRadius, $fn=30, center=true);
        
    translate([0, -myRadius/3, -height / 2 + transversalBoltRole + 3 + 20])
        rotate(a=[-90, 0, -90])
            cylinder(r = transversalBoltRole, h = 2 * myRadius, $fn=30, center=true);
        
    translate([myRadius/3, 0, -height / 2 + transversalBoltRole + 3])
        rotate(a=[-90, 0, 0])
            cylinder(r = transversalBoltRole, h = 2 * myRadius, $fn=30, center=true);
        
    translate([-myRadius/3, 0, -height / 2 + transversalBoltRole + 3])
        rotate(a=[-90, 0, 0])
            cylinder(r = transversalBoltRole, h = 2 * myRadius, $fn=30, center=true);
        
        //fixing roles
        translate([myRadius/2, 0, 0]) {
            cylinder(r = fixinigRoles, h = height * 2, $fn=30, center=true);
        }
        
        rotate(a=[0, 0, 120])
            translate([myRadius/2, 0, 0]) {
                cylinder(r = fixinigRoles, h = height * 2, $fn=30, center=true);
            }
        
        rotate(a=[0, 0, 240])
            translate([myRadius/2, 0, 0]) {
                cylinder(r = fixinigRoles, h = height * 2, $fn=30, center=true);
            }
        
        //filament saving
        cylinder(r = myRadius / 5 , h = height * 2, $fn=30, center=true);
            
        rotate(a=[0, 0, 60])
            translate([myRadius/2, 0, 0])
                cylinder(r = myRadius / 5 , h = height * 2, $fn=30, center=true);
        
        rotate(a=[0, 0, 180])
            translate([myRadius/2, 0, 0])
                cylinder(r = myRadius / 5, h = height * 2, $fn=30, center=true);
        
        rotate(a=[0, 0, 300])
            translate([myRadius/2, 0, 0])
                cylinder(r = myRadius / 5, h = height * 2, $fn=30, center=true);
    }
    
}

bodySupport();