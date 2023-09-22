//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.025962, -3.561400, 0.000000, 36.780432, 8.485425, 1.000000};
//+
MeshSize {1} = 2.823190;
//+
MeshSize {2} = 2.823190;
//+
MeshSize {3} = 2.961214;
//+
MeshSize {4} = 2.961214;
//+
MeshSize {5} = 0.606817;
//+
MeshSize {6} = 0.606817;
//+
MeshSize {7} = 0.543835;
//+
MeshSize {8} = 0.543835;
//+
Cylinder(2) = {24.275264, -0.389858, 0.000000, 0.000000, 0.000000, 1.000000, 1.455202, 2*Pi};
//+
MeshSize {9} = 0.145520;
//+
MeshSize {10} = 0.145520;
//+
Cylinder(3) = {26.925542, 1.988301, 0.000000, 0.000000, 0.000000, 1.000000, 1.457403, 2*Pi};
//+
MeshSize {11} = 0.145740;
//+
MeshSize {12} = 0.145740;
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
Save "../geo_unrolled/cad_449.geo_unrolled";
