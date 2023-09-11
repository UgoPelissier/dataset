//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.084700, -4.071580, 0.000000, 38.967376, 9.945433, 1.000000};
//+
MeshSize {1} = 0.474015;
//+
MeshSize {2} = 0.474015;
//+
MeshSize {3} = 0.474015;
//+
MeshSize {4} = 0.325053;
//+
MeshSize {5} = 0.325053;
//+
MeshSize {6} = 0.325053;
//+
MeshSize {7} = 3.936740;
//+
MeshSize {8} = 3.936740;
//+
Cylinder(2) = {5.421992, -1.977836, 0.000000, 0.000000, 0.000000, 1.000000, 0.993124, 2*Pi};
//+
MeshSize {9} = 0.099312;
//+
MeshSize {10} = 0.099312;
//+
Cylinder(3) = {2.470714, -0.649673, 0.000000, 0.000000, 0.000000, 1.000000, 0.921102, 2*Pi};
//+
MeshSize {11} = 0.092110;
//+
MeshSize {12} = 0.092110;
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
