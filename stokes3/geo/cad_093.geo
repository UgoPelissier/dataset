//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.495329, -4.450706, 0.000000, 34.527583, 8.975451, 1.000000};
//+
MeshSize {1} = 1.715752;
//+
MeshSize {2} = 1.715752;
//+
MeshSize {3} = 1.736323;
//+
MeshSize {4} = 1.736323;
//+
MeshSize {5} = 1.587032;
//+
MeshSize {6} = 1.587032;
//+
MeshSize {7} = 1.609133;
//+
MeshSize {8} = 1.609133;
//+
Cylinder(2) = {18.420338, -0.386590, 0.000000, 0.000000, 0.000000, 1.000000, 1.222444, 2*Pi};
//+
MeshSize {9} = 0.122244;
//+
MeshSize {10} = 0.122244;
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
