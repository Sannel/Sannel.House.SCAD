//$fn=100;

module tab()
{
    difference()
    {
        cube([8,25,3]);
        translate([4,21,0])cylinder(d=3.5,h=3);
    }
}

translate([23,16,0]) tab();
translate([89,16,0]) tab();
translate([31,184.5,0]) rotate([0,0,180]) tab();
translate([97,184.5,0]) rotate([0,0,180]) tab();

difference()
{
    cube([120.85,203.5,12.75]);
    color("orange") translate([5,5,11.07]) cube([110.85,193.5,1.68]);
    translate([6,16,0]) cube([104,168.5,12.75]);
}