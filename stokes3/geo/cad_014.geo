//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.178652, -3.210428, 0.000000, 38.526534, 8.246112, 1.000000};
//+
MeshSize {1} = 3.892417;
//+
MeshSize {2} = 3.892417;
//+
MeshSize {3} = 1.391326;
//+
MeshSize {4} = 1.391326;
//+
MeshSize {5} = 1.391326;
//+
MeshSize {6} = 1.392121;
//+
MeshSize {7} = 1.392121;
//+
MeshSize {8} = 1.392121;
//+
Cylinder(2) = {24.730659, 0.898581, 0.000000, 0.000000, 0.000000, 1.000000, 0.652839, 2*Pi};
//+
MeshSize {9} = 0.065284;
//+
MeshSize {10} = 0.065284;
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
