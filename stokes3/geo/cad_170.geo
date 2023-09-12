//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.476807, -4.467279, 0.000000, 31.785102, 9.199957, 1.000000};
//+
MeshSize {1} = 0.261270;
//+
MeshSize {2} = 0.261270;
//+
MeshSize {3} = 3.258820;
//+
MeshSize {4} = 3.258820;
//+
MeshSize {5} = 0.261270;
//+
MeshSize {6} = 0.261270;
//+
MeshSize {7} = 3.258820;
//+
MeshSize {8} = 3.258820;
//+
Cylinder(2) = {2.285056, -1.075752, 0.000000, 0.000000, 0.000000, 1.000000, 1.230763, 2*Pi};
//+
MeshSize {9} = 0.123076;
//+
MeshSize {10} = 0.123076;
//+
Cylinder(3) = {4.424053, 2.515825, 0.000000, 0.000000, 0.000000, 1.000000, 1.253158, 2*Pi};
//+
MeshSize {11} = 0.125316;
//+
MeshSize {12} = 0.125316;
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
Save "../geo_unrolled/cad_170.geo_unrolled";
