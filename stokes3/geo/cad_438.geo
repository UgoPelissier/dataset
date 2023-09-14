//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.260680, -4.061944, 0.000000, 38.007006, 9.498822, 1.000000};
//+
MeshSize {1} = 0.734692;
//+
MeshSize {2} = 0.734692;
//+
MeshSize {3} = 0.895925;
//+
MeshSize {4} = 0.895925;
//+
MeshSize {5} = 1.308752;
//+
MeshSize {6} = 1.308752;
//+
MeshSize {7} = 1.274577;
//+
MeshSize {8} = 1.274577;
//+
Cylinder(2) = {7.602401, -0.812183, 0.000000, 0.000000, 0.000000, 1.000000, 0.681889, 2*Pi};
//+
MeshSize {9} = 0.068189;
//+
MeshSize {10} = 0.068189;
//+
Cylinder(3) = {24.763276, 1.202811, 0.000000, 0.000000, 0.000000, 1.000000, 1.406845, 2*Pi};
//+
MeshSize {11} = 0.140684;
//+
MeshSize {12} = 0.140684;
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
Save "../geo_unrolled/cad_438.geo_unrolled";
