//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.313677, -3.625285, 0.000000, 34.800553, 8.462989, 0.000000};
//+
l = [3.5368272990611005, 1.0197914183154768, 0.9068827440463645, 3.5368272990611005];
//+
MeshSize {1} = 3.536827;
//+
MeshSize {2} = 1.019791;
//+
MeshSize {3} = 0.906883;
//+
MeshSize {4} = 3.536827;
//+
Disk(2) = {25.262231, 2.047621, 0.000000, 1.170629, 1.170629};
//+
c0 = 0.11706285044329996;
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
