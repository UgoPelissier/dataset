//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.084700, -4.071580, 0.000000, 38.967376, 9.945432, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {5.421992, -1.977836, 0.000000, 0.000000, 0.000000, 1.000000, 0.993124, 2*Pi};
//+
c0 = 0.09931240000000001;
//+
Cylinder(3) = {2.470714, -0.649673, 0.000000, 0.000000, 0.000000, 1.000000, 0.921102, 2*Pi};
//+
c1 = 0.0921102;
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
Mesh 1;
//+
RefineMesh;
//+
RefineMesh;
//+
Mesh 3;
//+
Save "cad_252.msh";
