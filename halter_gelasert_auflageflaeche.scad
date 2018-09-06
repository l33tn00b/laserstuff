module pie_slice(r=3.0,a=30) {
  $fn=64;
  intersection() {
    circle(r=r);
    square(r);
    rotate(a-90) square(r);
  }
}

 module regular_polygon(order, r=1){
 	angles=[ for (i = [0:order-1]) i*(360/order) ];
 	coords=[ for (th=angles) [r*cos(th), r*sin(th)] ];
 	polygon(coords);
 }

difference(){
    union(){
        square([80,50], center=true);
        //translate([-50,-25]) rotate([0,0,90]) pie_slice(r=50,a=90);
        //mirror([1,0,0]) translate([-50,-25]) rotate([0,0,90]) pie_slice(r=50,a=90);
        //translate([-60,-5]) rotate([0,0,180]) regular_polygon(order=3, r=40);
        //translate([-35,-40]) rotate([0,0,45]) square([45,45]);
        translate([-40,-25-15])square([60,30],center=true);
        polygon(points=[[-40,-25],[-70,-25],[-40,25]], convexity=1);
    }
    translate([-25,-50]) square([30,3],center=true);
}