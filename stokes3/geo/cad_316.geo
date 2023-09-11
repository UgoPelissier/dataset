//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.491619, -4.139942, 0.000000, 30.490555, 9.672250, 1.000000};
//+
MeshSize {1} = 3.135735;
//+
MeshSize {2} = 3.135735;
//+
MeshSize {3} = 3.135735;
//+
MeshSize {4} = 3.135735;
//+
MeshSize {5} = 0.480755;
//+
MeshSize {6} = 0.480755;
//+
MeshSize {7} = 0.480755;
//+
MeshSize {8} = 0.480755;
//+
Cylinder(2) = {25.585802, -2.230228, 0.000000, 0.000000, 0.000000, 1.000000, 0.916773, 2*Pi};
//+
MeshSize {9} = 0.091677;
//+
MeshSize {10} = 0.091677;
//+
Cylinder(3) = {25.528364, 2.330478, 0.000000, 0.000000, 0.000000, 1.000000, 1.259493, 2*Pi};
//+
MeshSize {11} = 0.125949;
//+
MeshSize {12} = 0.125949;
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
