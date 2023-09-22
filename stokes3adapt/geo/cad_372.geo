//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.060059, -3.345113, 0.000000, 32.586590, 8.601437, 1.000000};
//+
MeshSize {1} = 1.229670;
//+
MeshSize {2} = 1.229670;
//+
MeshSize {3} = 2.141723;
//+
MeshSize {4} = 2.141723;
//+
MeshSize {5} = 0.952962;
//+
MeshSize {6} = 0.952962;
//+
MeshSize {7} = 0.686688;
//+
MeshSize {8} = 0.686688;
//+
Cylinder(2) = {5.825539, -0.068319, 0.000000, 0.000000, 0.000000, 1.000000, 0.643873, 2*Pi};
//+
MeshSize {9} = 0.064387;
//+
MeshSize {10} = 0.064387;
//+
Cylinder(3) = {29.793633, 1.852752, 0.000000, 0.000000, 0.000000, 1.000000, 0.603287, 2*Pi};
//+
MeshSize {11} = 0.060329;
//+
MeshSize {12} = 0.060329;
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
Save "../geo_unrolled/cad_372.geo_unrolled";
