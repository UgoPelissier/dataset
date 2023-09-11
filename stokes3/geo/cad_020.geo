//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.784619, -3.063667, 0.000000, 31.119480, 7.742327, 1.000000};
//+
MeshSize {1} = 1.223417;
//+
MeshSize {2} = 1.223417;
//+
MeshSize {3} = 1.303073;
//+
MeshSize {4} = 1.303073;
//+
MeshSize {5} = 3.213810;
//+
MeshSize {6} = 3.213810;
//+
MeshSize {7} = 3.213810;
//+
MeshSize {8} = 3.213810;
//+
Cylinder(2) = {13.752300, -0.591679, 0.000000, 0.000000, 0.000000, 1.000000, 0.967025, 2*Pi};
//+
MeshSize {9} = 0.096702;
//+
MeshSize {10} = 0.096702;
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
