$fn = 20;     // Team.Mu.Captain@gmail.com

SmoothR       = 1;
SmoothH       = 1;

length        = 2;
thickness     = 4;




difference(){
minkowski(){
    cube([(80+length),38,thickness]);
    cylinder(r=SmoothR,h=SmoothH);
}

// nooks
translate([6,-48,-3]){
    cube([(10+length),60,30]);
}
translate([6,26,-3]){
    cube([(10+length),60,30]);
}
//slot
translate([(35+length),6,-3]){
    cube([6,38,20]);
}

// clip hole
translate([(25+length),6,-3]){
    cube([11,40,20]);
}

}