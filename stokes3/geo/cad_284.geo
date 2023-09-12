//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.360962, -3.511793, 0.000000, 38.957484, 8.144287, 1.000000};
//+
MeshSize {1} = 1.347718;
//+
MeshSize {2} = 1.347718;
//+
MeshSize {3} = 1.144804;
//+
MeshSize {4} = 1.144804;
//+
MeshSize {5} = 1.347718;
//+
MeshSize {6} = 1.347718;
//+
MeshSize {7} = 3.952876;
//+
MeshSize {8} = 3.952876;
//+
Cylinder(2) = {13.962335, 1.410532, 0.000000, 0.000000, 0.000000, 1.000000, 0.987494, 2*Pi};
//+
MeshSize {9} = 0.098749;
//+
MeshSize {10} = 0.098749;
//+
Cylinder(3) = {28.959064, 3.173279, 0.000000, 0.000000, 0.000000, 1.000000, 0.881071, 2*Pi};
//+
MeshSize {11} = 0.088107;
//+
MeshSize {12} = 0.088107;
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
Save "../geo_unrolled/cad_284.geo_unrolled";
