//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.400778, -3.269834, 0.000000, 32.317553, 8.464289, 1.000000};
//+
MeshSize {1} = 3.299091;
//+
MeshSize {2} = 3.299091;
//+
MeshSize {3} = 0.644107;
//+
MeshSize {4} = 0.644107;
//+
MeshSize {5} = 0.651798;
//+
MeshSize {6} = 0.651798;
//+
MeshSize {7} = 0.644107;
//+
MeshSize {8} = 0.644107;
//+
Cylinder(2) = {27.832554, 2.538433, 0.000000, 0.000000, 0.000000, 1.000000, 1.148846, 2*Pi};
//+
MeshSize {9} = 0.114885;
//+
MeshSize {10} = 0.114885;
//+
Cylinder(3) = {1.918812, 3.745168, 0.000000, 0.000000, 0.000000, 1.000000, 0.659395, 2*Pi};
//+
MeshSize {11} = 0.065940;
//+
MeshSize {12} = 0.065940;
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
Save "../geo_unrolled/cad_336.geo_unrolled";
