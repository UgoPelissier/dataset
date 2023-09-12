//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.067233, -3.450053, 0.000000, 33.596051, 8.457136, 1.000000};
//+
MeshSize {1} = 3.392783;
//+
MeshSize {2} = 3.392783;
//+
MeshSize {3} = 1.125850;
//+
MeshSize {4} = 1.125850;
//+
MeshSize {5} = 3.392783;
//+
MeshSize {6} = 3.392783;
//+
MeshSize {7} = 1.402131;
//+
MeshSize {8} = 1.402131;
//+
Cylinder(2) = {19.095318, 0.888801, 0.000000, 0.000000, 0.000000, 1.000000, 1.179062, 2*Pi};
//+
MeshSize {9} = 0.117906;
//+
MeshSize {10} = 0.117906;
//+
Cylinder(3) = {21.866348, -2.117568, 0.000000, 0.000000, 0.000000, 1.000000, 0.613449, 2*Pi};
//+
MeshSize {11} = 0.061345;
//+
MeshSize {12} = 0.061345;
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
Save "../geo_unrolled/cad_099.geo_unrolled";
