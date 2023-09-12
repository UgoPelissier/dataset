//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.111549, -3.764306, 0.000000, 35.806152, 7.877839, 1.000000};
//+
MeshSize {1} = 1.633004;
//+
MeshSize {2} = 1.633004;
//+
MeshSize {3} = 1.004955;
//+
MeshSize {4} = 1.004955;
//+
MeshSize {5} = 1.633004;
//+
MeshSize {6} = 1.633004;
//+
MeshSize {7} = 3.613304;
//+
MeshSize {8} = 3.613304;
//+
Cylinder(2) = {16.042755, 2.425119, 0.000000, 0.000000, 0.000000, 1.000000, 0.761253, 2*Pi};
//+
MeshSize {9} = 0.076125;
//+
MeshSize {10} = 0.076125;
//+
Cylinder(3) = {25.170223, -0.118810, 0.000000, 0.000000, 0.000000, 1.000000, 1.299372, 2*Pi};
//+
MeshSize {11} = 0.129937;
//+
MeshSize {12} = 0.129937;
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
Save "../geo_unrolled/cad_364.geo_unrolled";
