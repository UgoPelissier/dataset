//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.271258, -4.299664, 0.000000, 33.456824, 8.755102, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {15.686734, -1.905926, 0.000000, 0.000000, 0.000000, 1.000000, 1.344847, 2*Pi};
//+
MeshSize {9} = 0.134485;
//+
MeshSize {10} = 0.134485;
//+
Cylinder(3) = {11.039232, 0.464821, 0.000000, 0.000000, 0.000000, 1.000000, 0.507969, 2*Pi};
//+
MeshSize {11} = 0.050797;
//+
MeshSize {12} = 0.050797;
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
Save "../geo_unrolled/cad_182.geo_unrolled";
