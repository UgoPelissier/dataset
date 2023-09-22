//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.531166, -3.396551, 0.000000, 37.394028, 7.924959, 1.000000};
//+
MeshSize {1} = 0.697783;
//+
MeshSize {2} = 0.697783;
//+
MeshSize {3} = 0.548531;
//+
MeshSize {4} = 0.548531;
//+
MeshSize {5} = 2.430118;
//+
MeshSize {6} = 2.430118;
//+
MeshSize {7} = 2.798710;
//+
MeshSize {8} = 2.798710;
//+
Cylinder(2) = {9.133517, 3.271653, 0.000000, 0.000000, 0.000000, 1.000000, 0.643118, 2*Pi};
//+
MeshSize {9} = 0.064312;
//+
MeshSize {10} = 0.064312;
//+
Cylinder(3) = {17.489200, -1.949720, 0.000000, 0.000000, 0.000000, 1.000000, 0.755327, 2*Pi};
//+
MeshSize {11} = 0.075533;
//+
MeshSize {12} = 0.075533;
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
Save "../geo_unrolled/cad_056.geo_unrolled";
