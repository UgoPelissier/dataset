//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.841058, -3.498445, 0.000000, 35.950253, 7.948243, 1.000000};
//+
MeshSize {1} = 0.410496;
//+
MeshSize {2} = 0.410496;
//+
MeshSize {3} = 0.577319;
//+
MeshSize {4} = 0.577319;
//+
MeshSize {5} = 3.700533;
//+
MeshSize {6} = 3.700533;
//+
MeshSize {7} = 3.700533;
//+
MeshSize {8} = 3.700533;
//+
Cylinder(2) = {16.116741, 1.260180, 0.000000, 0.000000, 0.000000, 1.000000, 0.585006, 2*Pi};
//+
MeshSize {9} = 0.058501;
//+
MeshSize {10} = 0.058501;
//+
Cylinder(3) = {5.274681, -0.789862, 0.000000, 0.000000, 0.000000, 1.000000, 1.090557, 2*Pi};
//+
MeshSize {11} = 0.109056;
//+
MeshSize {12} = 0.109056;
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
Save "../geo_unrolled/cad_417.geo_unrolled";
