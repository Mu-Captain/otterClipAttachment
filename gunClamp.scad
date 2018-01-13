$fn = 20;     // Team.Mu.Captain@gmail.com

SmoothR       = 1;
SmoothH       = 1;

thickness     = 20;
long          = 24;
wide          = 10;


difference(){
minkowski(){
    cube([long,wide,thickness]);
    cylinder(r=SmoothR,h=SmoothH);
}
//slot
translate([9.5,-6,3]){
    cube([5,60,10]);
}
// screw holes
translate([4.5,50,5]){
rotate([90,90,0]){
    cylinder(r=2,h=80);
}}
translate([19.5,50,5]){
rotate([90,90,0]){
    cylinder(r=2,h=80);
}}
// cut rail
translate([-5,8,10]){
rotate([45,0,0]){
    translate([0,1,-4]){
    cube([long+10, 5, 9]);
    }}
    translate([0,0,2]){
    cube([long+10, 20, 20]);
}}
}