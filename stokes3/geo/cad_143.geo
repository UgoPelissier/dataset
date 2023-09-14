//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.076937, -4.630863, 0.000000, 32.327784, 9.586626, 1.000000};
//+
MeshSize {1} = 1.166379;
//+
MeshSize {2} = 1.166379;
//+
MeshSize {3} = 0.975980;
//+
MeshSize {4} = 0.975980;
//+
MeshSize {5} = 0.859595;
//+
MeshSize {6} = 0.859595;
//+
MeshSize {7} = 0.874230;
//+
MeshSize {8} = 0.874230;
//+
Cylinder(2) = {23.466319, 0.007601, 0.000000, 0.000000, 0.000000, 1.000000, 1.474323, 2*Pi};
//+
MeshSize {9} = 0.147432;
//+
MeshSize {10} = 0.147432;
//+
Cylinder(3) = {11.036813, 2.578857, 0.000000, 0.000000, 0.000000, 1.000000, 1.454858, 2*Pi};
//+
MeshSize {11} = 0.145486;
//+
MeshSize {12} = 0.145486;
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
Save "../geo_unrolled/cad_143.geo_unrolled";
