//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.508825, -4.011651, 0.000000, 38.120460, 8.111379, 1.000000};
//+
MeshSize {1} = 1.732778;
//+
MeshSize {2} = 1.732778;
//+
MeshSize {3} = 0.590827;
//+
MeshSize {4} = 0.590827;
//+
MeshSize {5} = 1.732778;
//+
MeshSize {6} = 1.732778;
//+
MeshSize {7} = 3.884160;
//+
MeshSize {8} = 3.884160;
//+
Cylinder(2) = {18.223929, -0.949198, 0.000000, 0.000000, 0.000000, 1.000000, 0.650085, 2*Pi};
//+
MeshSize {9} = 0.065008;
//+
MeshSize {10} = 0.065008;
//+
Cylinder(3) = {35.305145, 1.952132, 0.000000, 0.000000, 0.000000, 1.000000, 0.919369, 2*Pi};
//+
MeshSize {11} = 0.091937;
//+
MeshSize {12} = 0.091937;
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
Save "../geo_unrolled/cad_286.geo_unrolled";
