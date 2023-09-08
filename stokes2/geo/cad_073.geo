//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.440469, -4.741966, 0.000000, 30.073298, 9.852659, 0.000000};
//+
l = [1.5301396694027858, 3.0908877516334523, 1.5153027248318944, 1.336822531501383];
//+
MeshSize {1} = 1.530140;
//+
MeshSize {2} = 3.090888;
//+
MeshSize {3} = 1.515303;
//+
MeshSize {4} = 1.336823;
//+
Disk(2) = {14.577317, 3.173696, 0.000000, 0.900707, 0.900707};
//+
c0 = 0.09007074422519398;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
