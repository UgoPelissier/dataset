//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.879326, -3.873481, 0.000000, 31.883148, 9.475015, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {26.883231, -2.057604, 0.000000, 0.000000, 0.000000, 1.000000, 0.798556, 2*Pi};
//+
MeshSize {9} = 0.079856;
//+
MeshSize {10} = 0.079856;
//+
Cylinder(3) = {4.868354, 0.365552, 0.000000, 0.000000, 0.000000, 1.000000, 0.845124, 2*Pi};
//+
MeshSize {11} = 0.084512;
//+
MeshSize {12} = 0.084512;
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
//+
Save "../geo_unrolled/cad_051.geo_unrolled";
