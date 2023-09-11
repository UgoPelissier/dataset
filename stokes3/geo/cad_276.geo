//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.958032, -3.712573, 0.000000, 35.927887, 7.829783, 1.000000};
//+
MeshSize {1} = 0.963939;
//+
MeshSize {2} = 0.963939;
//+
MeshSize {3} = 3.709309;
//+
MeshSize {4} = 3.709309;
//+
MeshSize {5} = 0.963939;
//+
MeshSize {6} = 0.963939;
//+
MeshSize {7} = 3.709309;
//+
MeshSize {8} = 3.709309;
//+
Cylinder(2) = {10.107459, 1.210390, 0.000000, 0.000000, 0.000000, 1.000000, 0.750389, 2*Pi};
//+
MeshSize {9} = 0.075039;
//+
MeshSize {10} = 0.075039;
//+
Cylinder(3) = {14.619423, -1.522820, 0.000000, 0.000000, 0.000000, 1.000000, 1.199441, 2*Pi};
//+
MeshSize {11} = 0.119944;
//+
MeshSize {12} = 0.119944;
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
