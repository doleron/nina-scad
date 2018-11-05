use <kossel/effector.scad>
use <body.scad>
use <top_arm.scad>
use <body_support_v2.scad>


armWidth = 24;
armLength = 90;
armHeight = 20;

H = 70;
nema17Height = 42;
h = H - nema17Height/2;

R = h / sin(30);

offset = 2;

//translate([0, R/2, 0])
//    robotBody(height = nema17Height + 10);

rotate(a=[0, 0, -30]) 
    translate([0, R/2, 0])
        robotBody(height = nema17Height + 10);

/*rotate(a=[0, 0, 240]) 
    translate([0, R/2, 0])
        robotBody(height = nema17Height + 10);

translate([0, armLength + H + offset, 0])
    rotate(a=[90, 0, 0])
        robotTopArm(armWidth,
    armLength, armHeight);

rotate(a=[0, 0, 120]) 
    translate([0, armLength + H + offset, 0]) 
        rotate(a=[90, 0, 0]) 
            robotTopArm(armWidth,
        armLength, armHeight);

rotate(a=[0, 0, 240])
    translate([0, armLength + H + offset, 0])
        rotate(a=[90, 0, 0])
            robotTopArm(armWidth,
        armLength, armHeight);
        
endEffectorZ = -194;
endEffectorY = 20;
endEffectorX = 20;
translate([0, 0, endEffectorZ]) 
    rotate(a=[0, 0, 60]) 
        effector();

diagonalRodLength = 235;
  
translate([endEffectorX, endEffectorY, endEffectorZ]) 
    rotate(a=[-34.2, 0, 0])  
        color([0,0,0])
        cylinder(r = 3, h = diagonalRodLength); 
 
translate([-endEffectorX, endEffectorY, endEffectorZ]) 
    rotate(a=[-34.2, 0, 0])  
        color([0,0,0])
        cylinder(r = 3, h = diagonalRodLength);  
  
rotate(a=[0, 0, 120]) {
    translate([endEffectorX, endEffectorY, endEffectorZ]) 
        rotate(a=[-34.2, 0, 0])  
            color([0,0,0])
            cylinder(r = 3, h = diagonalRodLength); 
     
    translate([-endEffectorX, endEffectorY, endEffectorZ]) 
        rotate(a=[-34.2, 0, 0])  
            color([0,0,0])
            cylinder(r = 3, h = diagonalRodLength);   
}

rotate(a=[0, 0, 240]) {
    translate([endEffectorX, endEffectorY, endEffectorZ]) 
        rotate(a=[-34.2, 0, 0])  
            color([0,0,0])
            cylinder(r = 3, h = diagonalRodLength); 
     
    translate([-endEffectorX, endEffectorY, endEffectorZ]) 
        rotate(a=[-34.2, 0, 0])  
            color([0,0,0])
            cylinder(r = 3, h = diagonalRodLength);   
}*/

//rotate(a=[0, 0, 30])
    bodySupport(side = 158, hight = nema17Height + 20);
  