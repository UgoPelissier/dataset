//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.628257, -3.394147, 0.000000, 36.723613, 8.331297, 1.000000};
//+
MeshSize {1} = 0.726115;
//+
MeshSize {2} = 0.726115;
//+
MeshSize {3} = 0.549817;
//+
MeshSize {4} = 0.549817;
//+
MeshSize {5} = 3.758344;
//+
MeshSize {6} = 3.758344;
//+
MeshSize {7} = 3.758344;
//+
MeshSize {8} = 3.758344;
//+
Cylinder(2) = {6.539906, 2.325620, 0.000000, 0.000000, 0.000000, 1.000000, 0.964623, 2*Pi};
//+
MeshSize {9} = 0.096462;
//+
MeshSize {10} = 0.096462;
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
//+
Save "../geo_unrolled/cad_164.geo_unrolled";
