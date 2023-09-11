//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.215951, -3.064747, 0.000000, 33.069644, 7.868885, 1.000000};
//+
l = [0.6548166071012016, 0.6548166071012016, 0.6548166071012016, 3.3517319547216573, 3.3517319547216573, 3.3517319547216573, 3.3517319547216573, 0.6091062811983686, 0.6091062811983686, 0.6091062811983686];
//+
MeshSize {1} = 0.654817;
//+
MeshSize {2} = 0.654817;
//+
MeshSize {3} = 0.654817;
//+
MeshSize {4} = 3.351732;
//+
MeshSize {5} = 3.351732;
//+
MeshSize {6} = 3.351732;
//+
MeshSize {7} = 3.351732;
//+
MeshSize {8} = 0.609106;
//+
Cylinder(2) = {5.808241, 1.267344, 0.000000, 0.000000, 0.000000, 1.000000, 0.525780, 2*Pi};
//+
c0 = 0.05257801497861984;
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
