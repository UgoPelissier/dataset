//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.789859, -4.171332, 0.000000, 33.853099, 9.083506, 1.000000};
//+
MeshSize {1} = 3.493941;
//+
MeshSize {2} = 3.493941;
//+
MeshSize {3} = 3.493941;
//+
MeshSize {4} = 3.493941;
//+
MeshSize {5} = 0.925383;
//+
MeshSize {6} = 0.925383;
//+
MeshSize {7} = 0.925383;
//+
MeshSize {8} = 0.698780;
//+
Cylinder(2) = {27.523094, 2.613251, 0.000000, 0.000000, 0.000000, 1.000000, 0.580959, 2*Pi};
//+
MeshSize {9} = 0.058096;
//+
MeshSize {10} = 0.058096;
//+
Cylinder(3) = {30.515154, 2.141534, 0.000000, 0.000000, 0.000000, 1.000000, 0.554812, 2*Pi};
//+
MeshSize {11} = 0.055481;
//+
MeshSize {12} = 0.055481;
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
