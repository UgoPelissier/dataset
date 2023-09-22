//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.417575, -4.302300, 0.000000, 35.240065, 9.750718, 1.000000};
//+
MeshSize {1} = 3.211627;
//+
MeshSize {2} = 3.211627;
//+
MeshSize {3} = 2.826849;
//+
MeshSize {4} = 2.826849;
//+
MeshSize {5} = 0.525436;
//+
MeshSize {6} = 0.525436;
//+
MeshSize {7} = 0.585219;
//+
MeshSize {8} = 0.585219;
//+
Cylinder(2) = {27.861074, -0.241549, 0.000000, 0.000000, 0.000000, 1.000000, 1.220033, 2*Pi};
//+
MeshSize {9} = 0.122003;
//+
MeshSize {10} = 0.122003;
//+
Cylinder(3) = {21.598179, 2.554213, 0.000000, 0.000000, 0.000000, 1.000000, 1.004764, 2*Pi};
//+
MeshSize {11} = 0.100476;
//+
MeshSize {12} = 0.100476;
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
Save "../geo_unrolled/cad_478.geo_unrolled";
