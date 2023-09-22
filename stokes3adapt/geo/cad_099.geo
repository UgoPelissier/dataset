//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.067233, -3.450053, 0.000000, 33.596051, 8.457136, 1.000000};
//+
MeshSize {1} = 1.734057;
//+
MeshSize {2} = 1.734057;
//+
MeshSize {3} = 1.720518;
//+
MeshSize {4} = 1.720518;
//+
MeshSize {5} = 0.737615;
//+
MeshSize {6} = 0.737615;
//+
MeshSize {7} = 0.862719;
//+
MeshSize {8} = 0.862719;
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
