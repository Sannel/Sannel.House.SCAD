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

module screwHole()
{
	cylinder(d=2.5,h=10);
	cylinder(d=7,h=2);
}

module walls()
{
	difference()
	{
		union()
		{
			cube([120.85,203.5,30]);
			translate([35,203,2]) cube([6,3,20]);
		}
		translate([3,3,0]) cube([114.85,197.5,31]);
		for(a=[1:32])
		{
			translate([-0.5,a*6,3]) cube([123,3,24]);
		}
		translate([20,200,6]) cableHole();
		translate([38,200,13]) rotate([-90,0,0]) screwHole();
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
	translate([58,0,0]) piPoll();
	translate([58,49,0]) piPoll();
}

module piHoles()
{
	cylinder(d=2.5,h=8);
	translate([0,49,0]) cylinder(d=2.5,h=8);
	translate([58,0,0]) cylinder(d=2.5,h=8);
	translate([58,49,0]) cylinder(d=2.5,h=8);
}



module floor()
{
	difference()
	{
		cube([120.85,203.5,3]);
		translate([70, 58.5,0]) union()
		{
			translate([0,0,-1]) cylinder(d=4.5,h=4);
			translate([0,4.5,-1]) cylinder(d=4.5,h=4);
			translate([0,-4.5,-1]) cylinder(d=4.5,h=4);
			translate([-2.25,-4.5,-1]) cube([4.5,9,5]);
			
			translate([0,86.5,-0.5]) cylinder(d=4.5,h=4);
			translate([-4.5,86.5,-1]) cylinder(d=4.5,h=4);
			translate([4.5,86.5,-1]) cylinder(d=4.5,h=4);
			translate([-4.5,84.25,-1]) cube([9,4.5,5]);
		}
		
		translate([70,100,0]) cylinder(d=20,h=4);
		translate([32.5,20,0]) piHoles();
		translate([32.5,130,0]) piHoles();
	}
}

module allTabs()
{
	tab();
	translate([0,206.5,0]) difference()
	{
		tab();
		translate([0,-4,0]) cube([8,8,4]);
	}
	
	translate([112.85,0,0]) tab();
	translate([112.85,206.5,0]) tab();
}



module tempSensorHolder()
{
	difference()
	{
		cube([41,41,6]);
		translate([3,3,3]) cube([35,35,4]);

		translate([6,6,0]) screwHole();
		translate([35,6,0]) screwHole();
		translate([6,35,0]) screwHole();
		translate([35,35,0]) screwHole();
	}
}

module cableHole()
{
	rotate([90,0,0]) translate([2,2,-5]) union()
	{
		cylinder(d=4,h=5);
		translate([0,10,0]) cylinder(d=4,h=5);
		translate([-2,0,0]) cube([4,10,5]);
	}
}

translate([32.5,20,0]) piHolder();
translate([32.5,130,0]) piHolder();
allTabs();
walls();
floor();
translate([0,203.5,0])tempSensorHolder();



