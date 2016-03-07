module pin(){
    millis= 0.0254;
    pin=    30*millis;
    pinH=   450*millis;
    space=  100*millis;
    cut=    10*millis;
    mXY=[   [0,0,0], 
            [0,1,0],
            [1,0,0],
            [1,1,0]]; //mirror XY
    
    color("gold")
    translate ([-pin/2,-pin/2,-120*millis]) cube([pin,pin,pinH]);    
    color("gray") 
    difference(){
        translate(-[space,space]/2) cube([space,space,space]);
//        for (i=mXY) mirror(i) translate([space,space]/2)cylinder(space,cut,cut,$fn=8);
    }
}
for (x=[0:1:10], y=[-1:1:+1]) translate([x*2.54,y*2.54,0]) pin();