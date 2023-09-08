//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.266978, -3.574759, 0.000000, 36.213376, 9.022828, 0.000000};
//+
l = [0.7555408386169363, 3.6758251744182973, 3.6758251744182973, 0.6202769916008757];
//+
MeshSize {1} = 0.755541;
//+
MeshSize {2} = 3.675825;
//+
MeshSize {3} = 3.675825;
//+
MeshSize {4} = 0.620277;
//+
Disk(2) = {6.243198, 2.067372, 0.000000, 0.663402, 0.663402};
//+
c0 = 0.06634024937619284;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
