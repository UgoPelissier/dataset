//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.094509, -4.087925, 0.000000, 35.342615, 9.681108, 1.000000};
//+
MeshSize {1} = 3.576619;
//+
MeshSize {2} = 3.576619;
//+
MeshSize {3} = 3.576619;
//+
MeshSize {4} = 3.576619;
//+
MeshSize {5} = 0.769716;
//+
MeshSize {6} = 0.769716;
//+
MeshSize {7} = 0.641841;
//+
MeshSize {8} = 0.641841;
//+
Cylinder(2) = {29.300193, 1.790687, 0.000000, 0.000000, 0.000000, 1.000000, 0.801072, 2*Pi};
//+
MeshSize {9} = 0.080107;
//+
MeshSize {10} = 0.080107;
//+
Cylinder(3) = {24.290154, 1.823404, 0.000000, 0.000000, 0.000000, 1.000000, 0.595833, 2*Pi};
//+
MeshSize {11} = 0.059583;
//+
MeshSize {12} = 0.059583;
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
Save "../geo_unrolled/cad_408.geo_unrolled";
