//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.484231, -3.981316, 0.000000, 32.032766, 8.116475, 1.000000};
//+
l = [3.27692601499251, 3.27692601499251, 0.23859069602942845, 0.23859069602942845, 0.23859069602942845, 1.2387149954484697, 1.2387149954484697, 1.2387149954484697, 1.2387149954484697, 1.2387149954484697, 1.2387149954484697, 1.1955390569569315, 1.1955390569569315, 1.1955390569569315, 1.1955390569569315, 1.1955390569569315, 1.1955390569569315, 3.27692601499251, 3.27692601499251, 0.5008031390062218, 0.5008031390062218, 0.5008031390062218];
//+
MeshSize {1} = 3.276926;
//+
MeshSize {2} = 3.276926;
//+
MeshSize {3} = 0.238591;
//+
MeshSize {4} = 0.238591;
//+
MeshSize {5} = 0.238591;
//+
MeshSize {6} = 1.238715;
//+
MeshSize {7} = 1.238715;
//+
MeshSize {8} = 1.238715;
//+
Cylinder(2) = {20.324219, 0.761377, 0.000000, 0.000000, 0.000000, 1.000000, 0.695548, 2*Pi};
//+
c0 = 0.06955482248802605;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {3.478420, -1.585489, 0.000000, 0.000000, 0.000000, 1.000000, 1.448823, 2*Pi};
//+
c1 = 0.14488234623945653;
//+
MeshSize {11, 12} = c1;
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
