//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.271956, -4.650234, 0.000000, 31.755170, 9.449842, 1.000000};
//+
MeshSize {1} = 3.237378;
//+
MeshSize {2} = 3.237378;
//+
MeshSize {3} = 1.270908;
//+
MeshSize {4} = 1.270908;
//+
MeshSize {5} = 1.409489;
//+
MeshSize {6} = 1.409489;
//+
MeshSize {7} = 1.270908;
//+
MeshSize {8} = 1.270908;
//+
Cylinder(2) = {18.726518, -3.256316, 0.000000, 0.000000, 0.000000, 1.000000, 0.664375, 2*Pi};
//+
MeshSize {9} = 0.066437;
//+
MeshSize {10} = 0.066437;
//+
Cylinder(3) = {14.926406, -0.883442, 0.000000, 0.000000, 0.000000, 1.000000, 1.035925, 2*Pi};
//+
MeshSize {11} = 0.103592;
//+
MeshSize {12} = 0.103592;
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
Save "../geo_unrolled/cad_292.geo_unrolled";
