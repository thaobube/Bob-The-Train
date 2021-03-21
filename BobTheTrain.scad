
//BODY
translate([-54,-27,20]){
    color([ 0/255, 88/255, 169/255 ])
    hull(){
        translate([0,0,0]) cylinder(h=80, r=5, $fn=20);
        translate([0,54,0]) cylinder(h=80, r=5, $fn=20);
        translate([54,0,0]) cylinder(h=80, r=5, $fn=20);
        translate([54,54,0]) cylinder(h=80, r=5, $fn=20);
}}
//window right
translate([-40,32,88]){
rotate([-90,0,0]){
color([ 130/255, 212/255, 246/255 ])
hull(){
cube([25,25,0.5]);
cylinder(h=0.5, r=2);
translate([25,0,0]) cylinder(h=0.5, r=2);
translate([0,25,0]) cylinder(h=0.5, r=2);
translate([25,25,0]) cylinder(h=0.5, r=2);}

color([ 255/255, 218/255, 0/255 ])

difference(){
hull(){
cube([26,26,1]);
translate([-1,-1,0])cylinder(h=1, r=2);
translate([26,-1,0]) cylinder(h=1, r=2);
translate([-1,26,0]) cylinder(h=1, r=2);
translate([26,26,0]) cylinder(h=1, r=2);
}
hull(){
cube([25,25,2]);
cylinder(h=0.5, r=2);
translate([25,0,0]) cylinder(h=2, r=2);
translate([0,25,0]) cylinder(h=2, r=2);
translate([25,25,0]) cylinder(h=2, r=2);}}
}}

//window left
translate([-40,-32,63]){
rotate([90,0,0]){
color([ 130/255, 212/255, 246/255 ])
hull(){
cube([25,25,0.5]);
cylinder(h=0.5, r=2);
translate([25,0,0]) cylinder(h=0.5, r=2);
translate([0,25,0]) cylinder(h=0.5, r=2);
translate([25,25,0]) cylinder(h=0.5, r=2);}

color([ 255/255, 218/255, 0/255 ])

difference(){
hull(){
cube([26,26,1]);
translate([-1,-1,0])cylinder(h=1, r=2);
translate([26,-1,0]) cylinder(h=1, r=2);
translate([-1,26,0]) cylinder(h=1, r=2);
translate([26,26,0]) cylinder(h=1, r=2);
}
hull(){
cube([25,25,2]);
cylinder(h=0.5, r=2);
translate([25,0,0]) cylinder(h=2, r=2);
translate([0,25,0]) cylinder(h=2, r=2);
translate([25,25,0]) cylinder(h=2, r=2);}}
}}



//TOP

translate([-27,0,100]){
rotate([0,0,45])
color([ 237/255, 39/255, 100/255 ])
minkowski(){
cylinder(h=12, r1=46, r2=0, $fn=4);
sphere(r=5);}
translate([-36.5,-36.5,-3])
color([ 255/255, 218/255, 0/255 ]) 
minkowski(){
cube([73,73,0.5]);
sphere(r=1);}}

//chimney
translate([-68,-39,100]) rotate([0,0,135]){
sphere(2);
rotate([90,0,0]) cylinder(h=7, r=2);
cylinder(h=10, r=2);
translate([0, 0,10]) color([ 238/255, 39/255, 105/255 ]) cylinder(h=6, r1=6, r2=0);
}

//HEAD-----

color([ 255/255, 218/255, 0/255 ]) {
difference(){
translate([0,0,60]){
rotate([0, 90,0]){
intersection(){
sphere(r=50);
cylinder(h=50, r=20); 
}}}
//--mouth
translate([48,0,57])
rotate([0,90,0])
minkowski(){
difference(){
cylinder(h=5, r=6);
translate([-46.7,0,0]) cylinder(h=5, r=50);}
sphere(r=2);}
}}

//pink ring
translate([0,0,60]){
rotate([0, 90,0]){
    translate([0,0,35]) color([ 238/255, 39/255, 105/255 ]) cylinder(h=7, r=22);}}

//--eyes
//eye left
translate([50,-5,65])
rotate([0,90,0]){
color([ 1, 1, 1 ])cylinder(h=1, r=4.5);
translate([1.5,0,0]) color([ 1/255, 140/255, 206/255 ])cylinder(h=1.1, r=3.5);
translate([2.5,0,0]) color([ 27/255, 29/255, 2/255 ])cylinder(h=1.2, r=2.6);}

//eye right
translate([50,5,65])
rotate([0,90,0]){
color([ 1, 1, 1 ])cylinder(h=1, r=4.5);
translate([1.5,0,0]) color([ 1/255, 140/255, 206/255 ])cylinder(h=1.1, r=3.5);
translate([2.5,0,0]) color([ 27/255, 29/255, 2/255 ])cylinder(h=1.2, r=2.6);}

//hat
translate([40,-2,81]) rotate([7,0,0]){
color([ 207/255, 131/255, 36/255 ]){
hull(){
    translate([0,0,0])cylinder(h=2, r=10);    
    translate([10,0,0])cylinder(h=2, r=8);
}}
color([ 140/255, 199/255, 63/255 ]){
intersection(){
sphere(r=20);
cylinder(h=20, r1=9, r2=12 );
}}}


//front base-under
translate([6.25,-35,14]){
color([ 0/255, 88/255, 169/255 ])

minkowski(){
difference(){
cube([52, 70, 17]);
translate([52,-2,0]) rotate([0,-30,0]) cube([30, 75, 30]);
}
sphere(r=1 );}}

//front base-upper
translate([6.25,-35,33]){
color([ 0/255, 88/255, 169/255 ])
minkowski(){
difference(){
cube([48, 70, 4]);
translate([48,-2,0]) rotate([0,-45,0]) cube([30, 75, 30]);
}
sphere(r=1);}}

//SMALL WHEELS-----------
//small wheel 1------
translate([11,38, 15])
rotate([-90,0,0])
{
color([ 255/255, 203/255, 5/255 ])
minkowski(){
cylinder(h=0.5, r=12);
sphere(r=2);}

//--small petal 1
translate([-9,0, 2.5]){
color([ 230/255, 33/255, 33/255 ])
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 2
translate([9,0, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 3
translate([0,-9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 4
translate([0,9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}
}

//small wheel 2-----
translate([40,38, 15])
rotate([-90,0,0])
{
color([ 255/255, 203/255, 5/255 ])
minkowski(){
cylinder(h=0.5, r=12 );
sphere(r=2 );}

//--small petal 1
translate([-9,0, 2.5]){
color([ 230/255, 33/255, 33/255 ])
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 2
translate([9,0, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 3
translate([0,-9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 4
translate([0,9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,-90]) {
difference(){
    hull(){
    cylinder(h=1.5, r=3 );
    translate([4,0,0])cylinder(h=1.5, r=1.5 );}
    translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}
}

//small wheel 3------
translate([11,-38, 15])
rotate([90,0,0])
{
color([ 255/255, 203/255, 5/255 ])
minkowski(){
cylinder(h=0.5, r=12 );
sphere(r=2 );}

//--small petal 1
translate([-9,0, 2.5]){
color([ 230/255, 33/255, 33/255 ])
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 2
translate([9,0, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 3
translate([0,-9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 4
translate([0,9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}
}

//small wheel 4------
translate([40,-38, 15])
rotate([90,0,0])
{
color([ 255/255, 203/255, 5/255 ])
minkowski(){
cylinder(h=0.5, r=12 );
sphere(r=2 );}

//--small petal 1
translate([-9,0, 2.5]){
color([ 230/255, 33/255, 33/255 ])
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 2
translate([9,0, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 3
translate([0,-9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 4
translate([0,9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}
}


//BIG WHEELS-----------
//big wheel 1------
translate([-30,35, 26])
rotate([-90,0,0])
{
color([ 248/255, 149/255, 29/255 ])
minkowski(){
cylinder(h=1.5, r=24 );
sphere(r=2 );}

//--big petal 1
translate([-17,0, 3.5]){
color([ 255/255, 203/255, 5/255 ])
difference(){
hull(){
cylinder(h=2, r=5 );
translate([8,0,0])cylinder(h=2, r=2 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=4.5 );
translate([8,0,0])cylinder(h=2, r=1.1 );}}}}

//--big petal 2
translate([17,0, 3.5]){
color([ 255/255, 203/255, 5/255 ]) rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=2, r=5 );
translate([8,0,0])cylinder(h=2, r=2 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=4.5 );
translate([8,0,0])cylinder(h=2, r=1.1 );}}}}}

//--big petal 3
translate([0,-17, 3.5]){
color([ 255/255, 203/255, 5/255 ]) rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=2, r=5 );
translate([8,0,0])cylinder(h=2, r=2 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=4.5 );
translate([8,0,0])cylinder(h=2, r=1.1 );}}}}}

//--big petal 4
translate([0,17, 3.5]){
color([ 255/255, 203/255, 5/255 ]) rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=2, r=5 );
translate([8,0,0])cylinder(h=2, r=2 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=4.5 );
translate([8,0,0])cylinder(h=2, r=1.1 );}}}}}
}

//big wheel 2------
translate([-30,-35, 26])
rotate([90,0,0])
{
color([ 248/255, 149/255, 29/255 ])
minkowski(){
cylinder(h=1.5, r=24 );
sphere(r=2 );}

//--big petal 1
translate([-17,0, 3.5]){
color([ 255/255, 203/255, 5/255 ])
difference(){
hull(){
cylinder(h=2, r=5 );
translate([8,0,0])cylinder(h=2, r=2 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=4.5 );
translate([8,0,0])cylinder(h=2, r=1.1 );}}}}

//--big petal 2
translate([17,0, 3.5]){
color([ 255/255, 203/255, 5/255 ]) rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=2, r=5 );
translate([8,0,0])cylinder(h=2, r=2 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=4.5 );
translate([8,0,0])cylinder(h=2, r=1.1 );}}}}}

//--big petal 3
translate([0,-17, 3.5]){
color([ 255/255, 203/255, 5/255 ]) rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=2, r=5 );
translate([8,0,0])cylinder(h=2, r=2 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=4.5 );
translate([8,0,0])cylinder(h=2, r=1.1 );}}}}}

//--big petal 4
translate([0,17, 3.5]){
color([ 255/255, 203/255, 5/255 ]) rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=2, r=5 );
translate([8,0,0])cylinder(h=2, r=2 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=4.5 );
translate([8,0,0])cylinder(h=2, r=1.1 );}}}}}
}

//WAGON 1-----
//wagon
translate([-160,-31,20]){
color([ 255/255, 80/255, 118/255 ])
minkowski(){
cube([90, 60, 10]);
sphere(4);}
//--link bar
color([ 255/255, 218/255, 0/255 ]){
translate([93,31,5])
rotate([0,90,0]){
cylinder(h=80, r=4);}
translate([-15,31,5])
rotate([0,90,0]){
cylinder(h=15, r=4);}}}

//small wheel 1------
translate([-85,35, 15])
rotate([-90,0,0])
{
color([ 255/255, 203/255, 5/255 ])
minkowski(){
cylinder(h=0.5, r=12);
sphere(r=2);}

//--small petal 1
translate([-9,0, 2.5]){
color([ 230/255, 33/255, 33/255 ])
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 2
translate([9,0, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 3
translate([0,-9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 4
translate([0,9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}
}

//small wheel 2------
translate([-145,35, 15])
rotate([-90,0,0])
{
color([ 255/255, 203/255, 5/255 ])
minkowski(){
cylinder(h=0.5, r=12);
sphere(r=2);}

//--small petal 1
translate([-9,0, 2.5]){
color([ 230/255, 33/255, 33/255 ])
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 2
translate([9,0, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 3
translate([0,-9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 4
translate([0,9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}
}


//small wheel 3------
translate([-85,-36, 15])
rotate([90,0,0])
{
color([ 255/255, 203/255, 5/255 ])
minkowski(){
cylinder(h=0.5, r=12 );
sphere(r=2 );}

//--small petal 1
translate([-9,0, 2.5]){
color([ 230/255, 33/255, 33/255 ])
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 2
translate([9,0, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 3
translate([0,-9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 4
translate([0,9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}
}

//small wheel 4------
translate([-145,-36, 15])
rotate([90,0,0])
{
color([ 255/255, 203/255, 5/255 ])
minkowski(){
cylinder(h=0.5, r=12 );
sphere(r=2 );}

//--small petal 1
translate([-9,0, 2.5]){
color([ 230/255, 33/255, 33/255 ])
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 2
translate([9,0, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 3
translate([0,-9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 4
translate([0,9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}
}



//Cicle
translate([-115,-7, 73]){
rotate([-90,0,0]){
color([ 0/255, 88/255, 169/255 ])
    cylinder(h=14, r=40 );
//eye left
translate([5,-10,14]){
color([ 1, 1, 1 ])scale([1,1.6,1]) cylinder(h=1, r=5);
translate([0,3,0])
color([ 27/255, 29/255, 2/255 ]) scale([1,1.5,1]) cylinder(h=1.2, r=3);}
//eye right
translate([-5,-10,14]){
color([ 1, 1, 1 ])scale([1,1.6,1]) cylinder(h=1, r=5);
translate([0,3,0])
color([ 27/255, 29/255, 2/255 ]) scale([1,1.5,1]) cylinder(h=1.2, r=3);}
//mouth
translate([0,12,14])
rotate([0,0,90])
minkowski(){
difference(){
cylinder(h=1, r=8);
translate([-28,0,0]) cylinder(h=5, r=30);}
sphere(r=0.5);}
}}



//WAGON 2-----
//wagon
translate([-270,-31,20]){
color([ 255/255, 80/255, 118/255 ])
minkowski(){
cube([90, 60, 10]);
sphere(4);}
//--link bar
color([ 255/255, 218/255, 0/255 ]){
translate([93,31,5])
rotate([0,90,0]){
cylinder(h=15, r=4);}
translate([-15,31,5])
rotate([0,90,0]){
cylinder(h=15, r=4);}}}

//small wheel 1------
translate([-195,35, 15])
rotate([-90,0,0])
{
color([ 255/255, 203/255, 5/255 ])
minkowski(){
cylinder(h=0.5, r=12);
sphere(r=2);}

//--small petal 1
translate([-9,0, 2.5]){
color([ 230/255, 33/255, 33/255 ])
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 2
translate([9,0, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 3
translate([0,-9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 4
translate([0,9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}
}

//small wheel 2------
translate([-255,35, 15])
rotate([-90,0,0])
{
color([ 255/255, 203/255, 5/255 ])
minkowski(){
cylinder(h=0.5, r=12);
sphere(r=2);}

//--small petal 1
translate([-9,0, 2.5]){
color([ 230/255, 33/255, 33/255 ])
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 2
translate([9,0, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 3
translate([0,-9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 4
translate([0,9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}
}

//small wheel 3------
translate([-195,-36, 15])
rotate([90,0,0])
{
color([ 255/255, 203/255, 5/255 ])
minkowski(){
cylinder(h=0.5, r=12 );
sphere(r=2 );}

//--small petal 1
translate([-9,0, 2.5]){
color([ 230/255, 33/255, 33/255 ])
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 2
translate([9,0, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 3
translate([0,-9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 4
translate([0,9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}
}

//small wheel 4------
translate([-255,-36, 15])
rotate([90,0,0])
{
color([ 255/255, 203/255, 5/255 ])
minkowski(){
cylinder(h=0.5, r=12 );
sphere(r=2 );}

//--small petal 1
translate([-9,0, 2.5]){
color([ 230/255, 33/255, 33/255 ])
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 2
translate([9,0, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 3
translate([0,-9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 4
translate([0,9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}
}

//Square
translate([-225,-7, 73]){
rotate([-90,0,0]){
translate([-32,-26, 0])color([ 251/255, 35/255, 123/255 ])
    cube([65,65, 14]);
//eye left
translate([10,-10,14]){
color([ 1, 1, 1 ])scale([1,1.6,1]) cylinder(h=1, r=5);
translate([0,3,0])
color([ 27/255, 29/255, 2/255 ]) scale([1,1.5,1]) cylinder(h=1.2, r=3);}
//eye right
translate([-10,-10,14]){
color([ 1, 1, 1 ])scale([1,1.6,1]) cylinder(h=1, r=5);
translate([0,3,0])
color([ 27/255, 29/255, 2/255 ]) scale([1,1.5,1]) cylinder(h=1.2, r=3);}
//mouth
translate([0,12,14])
rotate([0,0,90])
minkowski(){
difference(){
cylinder(h=1, r=8);
translate([-28,0,0]) cylinder(h=5, r=30);}
sphere(r=0.5);}
}}

//WAGON 3-----
//wagon
translate([-380,-31,20]){
color([ 255/255, 80/255, 118/255 ])
minkowski(){
cube([90, 60, 10]);
sphere(4);}
//--link bar
color([ 255/255, 218/255, 0/255 ]){
translate([93,31,5])
rotate([0,90,0]){
cylinder(h=15, r=4);}
}}

//small wheel 1------
translate([-305,35, 15])
rotate([-90,0,0])
{
color([ 255/255, 203/255, 5/255 ])
minkowski(){
cylinder(h=0.5, r=12);
sphere(r=2);}

//--small petal 1
translate([-9,0, 2.5]){
color([ 230/255, 33/255, 33/255 ])
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 2
translate([9,0, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 3
translate([0,-9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 4
translate([0,9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}
}

//small wheel 2------
translate([-365,35, 15])
rotate([-90,0,0])
{
color([ 255/255, 203/255, 5/255 ])
minkowski(){
cylinder(h=0.5, r=12);
sphere(r=2);}

//--small petal 1
translate([-9,0, 2.5]){
color([ 230/255, 33/255, 33/255 ])
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 2
translate([9,0, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 3
translate([0,-9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 4
translate([0,9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}
}
//small wheel 3------
translate([-305,-36, 15])
rotate([90,0,0])
{
color([ 255/255, 203/255, 5/255 ])
minkowski(){
cylinder(h=0.5, r=12 );
sphere(r=2 );}

//--small petal 1
translate([-9,0, 2.5]){
color([ 230/255, 33/255, 33/255 ])
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 2
translate([9,0, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 3
translate([0,-9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 4
translate([0,9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}
}

//small wheel 4------
translate([-365,-36, 15])
rotate([90,0,0])
{
color([ 255/255, 203/255, 5/255 ])
minkowski(){
cylinder(h=0.5, r=12 );
sphere(r=2 );}

//--small petal 1
translate([-9,0, 2.5]){
color([ 230/255, 33/255, 33/255 ])
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 2
translate([9,0, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,180]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 3
translate([0,-9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}

//--small petal 4
translate([0,9, 2.5]) 
color([ 230/255, 33/255, 33/255 ])rotate([0,0,-90]) {
difference(){
hull(){
cylinder(h=1.5, r=3 );
translate([4,0,0])cylinder(h=1.5, r=1.5 );}
translate([0,0,0.5]){
hull(){
cylinder(h=2, r=2.5 );
translate([4,0,0])cylinder(h=2, r=1.1 );}}}}
}
//Triangle
translate([-335,-7, 55]){
rotate([-90,0,0]){
color([ 164/255, 114/255, 213/255 ])
    rotate([0,0,-90])cylinder(h=14, r=45, $fn =3 );
//eye left
translate([7,-10,14]){
color([ 1, 1, 1 ])scale([1,1.6,1]) cylinder(h=1, r=5);
translate([0,3,0])
color([ 27/255, 29/255, 2/255 ]) scale([1,1.5,1]) cylinder(h=1.2, r=3);}
//eye right
translate([-7,-10,14]){
color([ 1, 1, 1 ])scale([1,1.6,1]) cylinder(h=1, r=5);
translate([0,3,0])
color([ 27/255, 29/255, 2/255 ]) scale([1,1.5,1]) cylinder(h=1.2, r=3);}
//mouth
translate([0,7,14])
rotate([0,0,90])
minkowski(){
difference(){
cylinder(h=1, r=8);
translate([-28,0,0]) cylinder(h=5, r=30);}
sphere(r=0.5);}
}}



