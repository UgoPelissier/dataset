//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.304613, -4.138003, 0.000000, 30.534471, 9.089497, 1.000000};
//+
MeshSize {1} = 3.117216;
//+
MeshSize {2} = 3.117216;
//+
MeshSize {3} = 3.117216;
//+
MeshSize {4} = 3.117216;
//+
MeshSize {5} = 0.337585;
//+
MeshSize {6} = 0.337585;
//+
MeshSize {7} = 0.441139;
//+
MeshSize {8} = 0.441139;
//+
Cylinder(2) = {28.788495, -0.161918, 0.000000, 0.000000, 0.000000, 1.000000, 1.097868, 2*Pi};
//+
MeshSize {9} = 0.109787;
//+
MeshSize {10} = 0.109787;
//+
Cylinder(3) = {25.889032, -1.089344, 0.000000, 0.000000, 0.000000, 1.000000, 0.851418, 2*Pi};
//+
MeshSize {11} = 0.085142;
//+
MeshSize {12} = 0.085142;
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
Save "../geo_unrolled/cad_486.geo_unrolled";
