//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.266978, -3.574759, 0.000000, 36.213376, 9.022828, 1.000000};
//+
l = [0.7555408386169363, 0.7555408386169363, 0.7555408386169363, 3.6758251744182973, 3.6758251744182973, 3.6758251744182973, 3.6758251744182973, 0.6202769916008757, 0.6202769916008757, 0.6202769916008757];
//+
MeshSize {1} = 0.755541;
//+
MeshSize {2} = 0.755541;
//+
MeshSize {3} = 0.755541;
//+
MeshSize {4} = 3.675825;
//+
MeshSize {5} = 3.675825;
//+
MeshSize {6} = 3.675825;
//+
MeshSize {7} = 3.675825;
//+
MeshSize {8} = 0.620277;
//+
Cylinder(2) = {6.243198, 2.067372, 0.000000, 0.000000, 0.000000, 1.000000, 0.663402, 2*Pi};
//+
c0 = 0.06634024937619284;
//+
MeshSize {9, 10} = c0;
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
