//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.895877, -4.115063, 0.000000, 37.202282, 9.129594, 1.000000};
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
Cylinder(2) = {12.249578, -0.222497, 0.000000, 0.000000, 0.000000, 1.000000, 0.650861, 2*Pi};
//+
MeshSize {9} = 0.065086;
//+
MeshSize {10} = 0.065086;
//+
Cylinder(3) = {13.084347, 1.956614, 0.000000, 0.000000, 0.000000, 1.000000, 1.004549, 2*Pi};
//+
MeshSize {11} = 0.100455;
//+
MeshSize {12} = 0.100455;
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
Save "../geo_unrolled/cad_081.geo_unrolled";
