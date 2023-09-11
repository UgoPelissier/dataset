//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.638991, -3.614052, 0.000000, 35.632649, 8.224179, 1.000000};
//+
MeshSize {1} = 3.650399;
//+
MeshSize {2} = 3.650399;
//+
MeshSize {3} = 1.101781;
//+
MeshSize {4} = 1.101781;
//+
MeshSize {5} = 1.101781;
//+
MeshSize {6} = 1.246314;
//+
MeshSize {7} = 1.246314;
//+
MeshSize {8} = 1.246314;
//+
Cylinder(2) = {24.845741, -1.665940, 0.000000, 0.000000, 0.000000, 1.000000, 0.572973, 2*Pi};
//+
MeshSize {9} = 0.057297;
//+
MeshSize {10} = 0.057297;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
