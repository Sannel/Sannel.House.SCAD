$fn=100;

module tab()
{
    translate([0,-3,0]) difference()
    {
        cube([8,3,13]);
        color("purple") translate([4,3.5,9]) rotate([90,0,0]) cylinder(d=4,h=4);
        
        translate([4,3,9]) rotate([90,0,0]) difference()
        {
            color("red") translate([-5,0,0]) cube([10, 10, 4]);
            color("blue") cylinder(d=8,h=3);
        }
    }
    
}

tab();
translate([0,206.5,0]) tab();

difference()
{
    cube([120.85,203.5,3]);
    translate([3,3,0]) cube([114.85,197.5,3]);
}