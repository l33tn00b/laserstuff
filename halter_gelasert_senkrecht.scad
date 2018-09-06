difference(){
    union(){
        square([60,70], center=true);
    }
    //schlitz zum ineinanderschieben
    translate([-15,-25]) square([30,3],center=true);
    //schlitze lüftung/befestigung
    
    translate([0,-15]) square([40,5],center=true);
    translate([0,-5]) square([40,5],center=true);
    translate([0,+5]) square([40,5],center=true);
    translate([0,+15]) square([40,5],center=true);
    
    //schlitz halter
    translate([0,+25]) square([40,4],center=true);
    translate([0,+25]) square([9,7],center=true);
    
}