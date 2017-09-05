$fn=100;

module tab()
{
    difference()
    {
        cube([8,25,3]);
        translate([4,20,0])cylinder(d=3.5,h=3);
    }
}

translate([23,17,0]) tab();
translate([89,17,0]) tab();
translate([31,183.5,0]) rotate([0,0,180]) tab();
translate([97,183.5,0]) rotate([0,0,180]) tab();

difference()
{
    cube([120.85,203.5,12.75]);
    color("orange") translate([5,5,11.07]) cube([110.85,193.5,1.68]);
    translate([11.75,17,0]) cube([99.85,166.5,12.75]);
}