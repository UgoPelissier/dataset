//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.589266, -3.947844, 0.000000, 29.475722, 9.514548, 0.000000};
//+
l = [3.0439039664912317, 0.8739105243277511, 1.0859038123399045, 3.0439039664912317];
//+
MeshSize {1} = 3.043904;
//+
MeshSize {2} = 0.873911;
//+
MeshSize {3} = 1.085904;
//+
MeshSize {4} = 3.043904;
//+
Disk(2) = {20.989552, -1.519944, 0.000000, 0.655479, 0.655479};
//+
c0 = 0.06554794998117816;
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
