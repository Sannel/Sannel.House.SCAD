$fn=100;

module tab()
{
    difference()
    {
        cube([8,25,3]);
        translate([4,21,0])cylinder(d=4,h=3);
    }
}

translate([23.75,15.5,0]) tab();
translate([89.75,15.5,0]) tab();
translate([31.75,184.5,0]) rotate([0,0,180]) tab();
translate([97.75,184.5,0]) rotate([0,0,180]) tab();
translate([5,32.5,0]) cube([20,8,3]);
translate([30,32.5,0]) cube([60,8,3]);
translate([97,32.5,0]) cube([15,8,3]);

translate([5,159.5,0]) cube([20,8,3]);
translate([30,159.5,0]) cube([60,8,3]);
translate([97,159.5,0]) cube([15,8,3]);

difference()
{
    translate([23.75, 33.5,0]) rotate([0,0,50]) cube([8,30,3]);
    cube([5,60,3]);
    translate([23.75,31,0]) cube([20,8,3]);
}
difference()
{
 translate([0, 146.5,0]) rotate([0,0,-50]) cube([8,30,3]);
    translate([0, 160,0]) cube([30,8,3]);
    cube([5,180,3]);
}
  
difference()
{
    translate([89.75, 40,0]) rotate([0,0,-50]) cube([8,30,3]);
    translate([85, 32,0]) cube([30,8,3]);
}
difference()
{
translate([114, 140.5,0]) rotate([0,0,50]) cube([8,30,3]);
translate([60,159.5,0]) cube([40,8,3]);
}

difference()
{
    cube([120.85,203.5,12.75]);
    color("orange") translate([5,6,11.07]) cube([107.85,190.5,1.68]);
    translate([4,4,12]) cube([111.85, 194.5, 0.75]);
    translate([6,16,0]) cube([104,168.5,12.75]);
    
    translate([4,19,6]) rotate([90,0,0]) cylinder(d=3,h=20);
    translate([116.85,19,6]) rotate([90,0,0]) cylinder(d=3,h=20);
    translate([4,204.5,6]) rotate([90,0,0]) cylinder(d=3,h=20);
    translate([116.85,204.5,6]) rotate([90,0,0]) cylinder(d=3,h=20);  
    
    difference()
    {
        cube([5,203.5,5]);
        translate([5,204,5]) rotate([90,0,0]) cylinder(d=10,h=205);
    }  
}



