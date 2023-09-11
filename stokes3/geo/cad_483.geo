//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.400615, -3.231061, 0.000000, 39.187624, 7.726667, 1.000000};
//+
l = [1.7417603364154077, 1.7417603364154077, 1.7417603364154077, 0.7193591513981517, 0.7193591513981517, 0.7193591513981517, 3.977629952800497, 3.977629952800497, 3.977629952800497, 3.977629952800497, 3.977629952800497, 3.977629952800497, 3.977629952800497, 3.977629952800497, 1.681391221124322, 1.681391221124322, 1.681391221124322, 0.636052503070818, 0.636052503070818, 0.636052503070818];
//+
MeshSize {1} = 1.741760;
//+
MeshSize {2} = 1.741760;
//+
MeshSize {3} = 1.741760;
//+
MeshSize {4} = 0.719359;
//+
MeshSize {5} = 0.719359;
//+
MeshSize {6} = 0.719359;
//+
MeshSize {7} = 3.977630;
//+
MeshSize {8} = 3.977630;
//+
Cylinder(2) = {18.196313, 2.059219, 0.000000, 0.000000, 0.000000, 1.000000, 1.147793, 2*Pi};
//+
c0 = 0.11477925718063152;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {7.561479, 1.513517, 0.000000, 0.000000, 0.000000, 1.000000, 1.396461, 2*Pi};
//+
c1 = 0.13964606978503466;
//+
MeshSize {11, 12} = c1;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
