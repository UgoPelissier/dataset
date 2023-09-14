//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.284175, -4.171667, 0.000000, 31.028596, 9.596294, 1.000000};
//+
MeshSize {1} = 0.918015;
//+
MeshSize {2} = 0.918015;
//+
MeshSize {3} = 0.992446;
//+
MeshSize {4} = 0.992446;
//+
MeshSize {5} = 1.357741;
//+
MeshSize {6} = 1.357741;
//+
MeshSize {7} = 1.532893;
//+
MeshSize {8} = 1.532893;
//+
Cylinder(2) = {10.182954, -0.228826, 0.000000, 0.000000, 0.000000, 1.000000, 1.474982, 2*Pi};
//+
MeshSize {9} = 0.147498;
//+
MeshSize {10} = 0.147498;
//+
Cylinder(3) = {16.927188, -2.183978, 0.000000, 0.000000, 0.000000, 1.000000, 0.944845, 2*Pi};
//+
MeshSize {11} = 0.094484;
//+
MeshSize {12} = 0.094484;
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
Save "../geo_unrolled/cad_288.geo_unrolled";
