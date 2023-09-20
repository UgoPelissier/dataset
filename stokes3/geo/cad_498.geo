//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.421007, -3.329318, 0.000000, 34.025236, 8.107881, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {5.077688, -1.551245, 0.000000, 0.000000, 0.000000, 1.000000, 0.842900, 2*Pi};
//+
MeshSize {9} = 0.084290;
//+
MeshSize {10} = 0.084290;
//+
Cylinder(3) = {28.768639, 2.908315, 0.000000, 0.000000, 0.000000, 1.000000, 0.922061, 2*Pi};
//+
MeshSize {11} = 0.092206;
//+
MeshSize {12} = 0.092206;
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
//+
Save "../geo_unrolled/cad_498.geo_unrolled";
