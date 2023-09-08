//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.215951, -3.064747, 0.000000, 33.069644, 7.868885, 0.000000};
//+
l = [0.6548166071012016, 3.3517319547216573, 3.3517319547216573, 0.6091062811983686];
//+
MeshSize {1} = 0.654817;
//+
MeshSize {2} = 3.351732;
//+
MeshSize {3} = 3.351732;
//+
MeshSize {4} = 0.609106;
//+
Disk(2) = {5.808241, 1.267344, 0.000000, 0.525780, 0.525780};
//+
c0 = 0.05257801497861984;
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
