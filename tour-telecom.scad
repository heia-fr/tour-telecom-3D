$fn=64;

module outer_tower() {
  for (i = [0:5]) {
    translate([0,0,i*14]) {
      cylinder(h = 10, r=24);
    }
  }
  cylinder(h = 14*6 + 5 + 4, r=19);
  cylinder(h = 14*6 + 5 + 4 + 4, r=10);
  cylinder(h = 14*6 + 5 + 4 + 4 + 50, r=2.5);
  // Toit
  translate([0,0,6*14]) {
    cylinder(h = 5, r=38);
  }
}

module tower() {
    difference() {
    outer_tower();
    translate([0,0,-0.1])
      cylinder(h=14*6, r=5.5);
      cylinder(h=200, r=1);
  }
}

// projection(cut=true) rotate([90,0,0]) tower();
// projection(cut=true) translate([0,0,-12]) tower();
tower();