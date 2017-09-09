$fn=100;

module tab()
{
	translate([0,-3,0]) difference()
	{
		cube([8,3,40]);
		color("purple") translate([4,3.5,36]) rotate([90,0,0]) cylinder(d=4,h=4);
		
		translate([4,3,36]) rotate([90,0,0]) difference()
		{
			color("red") translate([-5,0,0]) cube([10, 10, 4]);
			color("blue") cylinder(d=8,h=3);
		}
	}
}

module walls()
{
	difference()
	{
		cube([120.85,203.5,30]);
		translate([3,3,0]) cube([114.85,197.5,30]);
		for(a=[1:32])
		{
			translate([-0.5,a*6,3]) cube([123,3,24]);
		}
	}
}

module piPoll()
{
	difference()
	{
		cylinder(d=5.5,h=8);
		cylinder(d=2.5,h=8);
	}
}



module piHolder()
{
	piPoll();
	translate([0,49,0]) piPoll();
	translate([57.5,0,0]) piPoll();
	translate([57.5,49,0]) piPoll();
}



module floor()
{
	difference()
	{
		cube([120.85,203.5,3]);
		translate([60, 58.5,0]) union()
		{
			cylinder(d=4.5,h=4);
			translate([0,86.5,0]) cylinder(d=4.5,h=4);
		}
		
		translate([80,100,0]) cylinder(d=20,h=4);
	}
}

module allTabs()
{
	tab();
	translate([0,206.5,0]) tab();
	translate([112.85,0,0]) tab();
	translate([112.85,206.5,0]) tab();
}


translate([32.5,20,0]) piHolder();
translate([32.5,130,0]) piHolder();
allTabs();
walls();
floor();
