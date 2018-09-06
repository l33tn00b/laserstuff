hl = 11.0;    //Gesamtlänge (y)
hw = 2.8; //dicke/höhe des stegs (z)
bw = 3.5;
pd = 3;   //dicke der haltenasen (x)
pw = 7.0;     //höhe der haltenasen (y)
union(){
    square([hl, hw], center=true);
    
    //xmax
    translate([hl/2+pd/2,0]) square([pd,pw],center=true);
    translate([hl/2-2.9-pd/2,0]) square([pd,pw],center=true);
    
    translate([-(hl/2+pd/2),0]) square([pd,pw],center=true); //nase xmin aussen
    //hier ist die breite der aussparung in die die nase eingehängt wird
    //fest vorgegeben (2.75 ist etwas knapp für sperrholz, 2,9 ist ok für 
    //acryl)
    translate([-(hl/2-2.9-pd/2),0]) square([pd,pw],center=true); //nase xmin innen
}