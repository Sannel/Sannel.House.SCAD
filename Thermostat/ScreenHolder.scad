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

difference()
{
    cube([120.85,203.5,12.75]);
    color("orange") translate([5,6,11.07]) cube([107.85,190.5,1.68]);
    translate([4,4,12]) cube([111.85, 194.5, 0.75]);
    translate([6,16,0]) cube([104,168.5,12.75]);
}