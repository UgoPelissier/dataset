//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.400615, -3.231061, 0.000000, 39.187624, 7.726667, 0.000000};
//+
l = [1.7417603364154077, 0.7193591513981517, 3.977629952800497, 3.977629952800497, 3.977629952800497, 3.977629952800497, 1.681391221124322, 0.636052503070818];
//+
MeshSize {1} = 1.741760;
//+
MeshSize {2} = 0.719359;
//+
MeshSize {3} = 3.977630;
//+
MeshSize {4} = 3.977630;
//+
Disk(2) = {18.196313, 2.059219, 0.000000, 1.147793, 1.147793};
//+
c0 = 0.11477925718063152;
//+
MeshSize {5} = c0;
//+
Disk(3) = {7.561479, 1.513517, 0.000000, 1.396461, 1.396461};
//+
c1 = 0.13964606978503466;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
