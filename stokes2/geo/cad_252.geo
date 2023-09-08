//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.084700, -4.071580, 0.000000, 38.967376, 9.945433, 0.000000};
//+
l = [0.4740152882115462, 0.325052971687854, 3.936740437908327, 3.936740437908327, 3.936740437908327, 3.936740437908327, 0.8500858391854798, 0.6025079574998076];
//+
MeshSize {1} = 0.474015;
//+
MeshSize {2} = 0.325053;
//+
MeshSize {3} = 3.936740;
//+
MeshSize {4} = 3.936740;
//+
Disk(2) = {5.421992, -1.977836, 0.000000, 0.993124, 0.993124};
//+
c0 = 0.09931239422107847;
//+
MeshSize {5} = c0;
//+
Disk(3) = {2.470714, -0.649673, 0.000000, 0.921102, 0.921102};
//+
c1 = 0.09211023397725243;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
