//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.589266, -3.947844, 0.000000, 29.475722, 9.514548, 1.000000};
//+
l = [3.0439039664912317, 3.0439039664912317, 0.8739105243277511, 0.8739105243277511, 0.8739105243277511, 1.0859038123399045, 1.0859038123399045, 1.0859038123399045, 3.0439039664912317, 3.0439039664912317];
//+
MeshSize {1} = 3.043904;
//+
MeshSize {2} = 3.043904;
//+
MeshSize {3} = 0.873911;
//+
MeshSize {4} = 0.873911;
//+
MeshSize {5} = 0.873911;
//+
MeshSize {6} = 1.085904;
//+
MeshSize {7} = 1.085904;
//+
MeshSize {8} = 1.085904;
//+
Cylinder(2) = {20.989552, -1.519944, 0.000000, 0.000000, 0.000000, 1.000000, 0.655479, 2*Pi};
//+
c0 = 0.06554794998117816;
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
