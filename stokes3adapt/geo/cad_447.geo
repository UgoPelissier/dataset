//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.927206, -4.595495, 0.000000, 32.637995, 9.272573, 1.000000};
//+
MeshSize {1} = 2.702297;
//+
MeshSize {2} = 2.702297;
//+
MeshSize {3} = 2.736239;
//+
MeshSize {4} = 2.736239;
//+
MeshSize {5} = 0.380761;
//+
MeshSize {6} = 0.380761;
//+
MeshSize {7} = 0.827688;
//+
MeshSize {8} = 0.827688;
//+
Cylinder(2) = {16.285819, -0.065014, 0.000000, 0.000000, 0.000000, 1.000000, 1.345838, 2*Pi};
//+
MeshSize {9} = 0.134584;
//+
MeshSize {10} = 0.134584;
//+
Cylinder(3) = {29.096978, -3.489694, 0.000000, 0.000000, 0.000000, 1.000000, 0.593578, 2*Pi};
//+
MeshSize {11} = 0.059358;
//+
MeshSize {12} = 0.059358;
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
Save "../geo_unrolled/cad_447.geo_unrolled";
