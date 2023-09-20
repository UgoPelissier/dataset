//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.685493, -3.392459, 0.000000, 38.194801, 8.383989, 1.000000};
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
Cylinder(2) = {37.698851, -1.840621, 0.000000, 0.000000, 0.000000, 1.000000, 0.531173, 2*Pi};
//+
MeshSize {9} = 0.053117;
//+
MeshSize {10} = 0.053117;
//+
Cylinder(3) = {22.199934, -0.925875, 0.000000, 0.000000, 0.000000, 1.000000, 1.095192, 2*Pi};
//+
MeshSize {11} = 0.109519;
//+
MeshSize {12} = 0.109519;
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
Save "../geo_unrolled/cad_341.geo_unrolled";
