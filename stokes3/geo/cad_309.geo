//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.265265, -3.530521, 0.000000, 32.110218, 7.624089, 1.000000};
//+
MeshSize {1} = 3.259913;
//+
MeshSize {2} = 3.259913;
//+
MeshSize {3} = 1.450190;
//+
MeshSize {4} = 1.450190;
//+
MeshSize {5} = 1.100435;
//+
MeshSize {6} = 1.100435;
//+
MeshSize {7} = 1.450190;
//+
MeshSize {8} = 1.450190;
//+
Cylinder(2) = {18.511324, 2.591081, 0.000000, 0.000000, 0.000000, 1.000000, 0.653590, 2*Pi};
//+
MeshSize {9} = 0.065359;
//+
MeshSize {10} = 0.065359;
//+
Cylinder(3) = {11.682011, -0.551939, 0.000000, 0.000000, 0.000000, 1.000000, 0.794549, 2*Pi};
//+
MeshSize {11} = 0.079455;
//+
MeshSize {12} = 0.079455;
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
Save "../geo_unrolled/cad_309.geo_unrolled";
