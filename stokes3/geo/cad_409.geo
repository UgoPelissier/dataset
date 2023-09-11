//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.497549, -3.601782, 0.000000, 35.632843, 8.306500, 1.000000};
//+
MeshSize {1} = 0.603627;
//+
MeshSize {2} = 0.603627;
//+
MeshSize {3} = 0.603627;
//+
MeshSize {4} = 0.385962;
//+
MeshSize {5} = 0.385962;
//+
MeshSize {6} = 0.385962;
//+
MeshSize {7} = 3.636832;
//+
MeshSize {8} = 3.636832;
//+
Cylinder(2) = {2.409169, 2.784284, 0.000000, 0.000000, 0.000000, 1.000000, 0.629774, 2*Pi};
//+
MeshSize {9} = 0.062977;
//+
MeshSize {10} = 0.062977;
//+
Cylinder(3) = {3.568006, 0.589863, 0.000000, 0.000000, 0.000000, 1.000000, 1.336300, 2*Pi};
//+
MeshSize {11} = 0.133630;
//+
MeshSize {12} = 0.133630;
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
