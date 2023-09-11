//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.090133, -3.674440, 0.000000, 37.384675, 7.939100, 1.000000};
//+
MeshSize {1} = 0.481681;
//+
MeshSize {2} = 0.481681;
//+
MeshSize {3} = 0.481681;
//+
MeshSize {4} = 3.768446;
//+
MeshSize {5} = 3.768446;
//+
MeshSize {6} = 3.768446;
//+
MeshSize {7} = 3.768446;
//+
MeshSize {8} = 0.479436;
//+
Cylinder(2) = {4.952663, 0.312862, 0.000000, 0.000000, 0.000000, 1.000000, 1.471490, 2*Pi};
//+
MeshSize {9} = 0.147149;
//+
MeshSize {10} = 0.147149;
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
