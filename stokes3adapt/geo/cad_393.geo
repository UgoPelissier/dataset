//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.267358, -3.148985, 0.000000, 32.504095, 7.658423, 1.000000};
//+
MeshSize {1} = 0.390334;
//+
MeshSize {2} = 0.390334;
//+
MeshSize {3} = 0.285265;
//+
MeshSize {4} = 0.285265;
//+
MeshSize {5} = 4.501673;
//+
MeshSize {6} = 4.501673;
//+
MeshSize {7} = 4.684561;
//+
MeshSize {8} = 4.684561;
//+
Cylinder(2) = {11.313577, -0.105480, 0.000000, 0.000000, 0.000000, 1.000000, 1.026683, 2*Pi};
//+
MeshSize {9} = 0.102668;
//+
MeshSize {10} = 0.102668;
//+
Cylinder(3) = {4.021366, 1.606931, 0.000000, 0.000000, 0.000000, 1.000000, 1.178308, 2*Pi};
//+
MeshSize {11} = 0.117831;
//+
MeshSize {12} = 0.117831;
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
Save "../geo_unrolled/cad_393.geo_unrolled";
