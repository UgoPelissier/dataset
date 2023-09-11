//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.213701, -4.271845, 0.000000, 38.798107, 9.490062, 1.000000};
//+
MeshSize {1} = 3.929932;
//+
MeshSize {2} = 3.929932;
//+
MeshSize {3} = 3.929932;
//+
MeshSize {4} = 3.929932;
//+
MeshSize {5} = 1.325498;
//+
MeshSize {6} = 1.325498;
//+
MeshSize {7} = 1.452618;
//+
MeshSize {8} = 1.452618;
//+
Cylinder(2) = {24.692167, -1.564074, 0.000000, 0.000000, 0.000000, 1.000000, 1.318423, 2*Pi};
//+
MeshSize {9} = 0.131842;
//+
MeshSize {10} = 0.131842;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_044.geo_unrolled";
