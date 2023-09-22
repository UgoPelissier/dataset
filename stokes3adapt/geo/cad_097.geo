//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.545474, -4.254938, 0.000000, 30.255215, 9.152298, 1.000000};
//+
MeshSize {1} = 0.973816;
//+
MeshSize {2} = 0.973816;
//+
MeshSize {3} = 0.915163;
//+
MeshSize {4} = 0.915163;
//+
MeshSize {5} = 0.980897;
//+
MeshSize {6} = 0.980897;
//+
MeshSize {7} = 1.443374;
//+
MeshSize {8} = 1.443374;
//+
Cylinder(2) = {9.440284, 0.939224, 0.000000, 0.000000, 0.000000, 1.000000, 0.926116, 2*Pi};
//+
MeshSize {9} = 0.092612;
//+
MeshSize {10} = 0.092612;
//+
Cylinder(3) = {21.245231, -1.358686, 0.000000, 0.000000, 0.000000, 1.000000, 0.542355, 2*Pi};
//+
MeshSize {11} = 0.054236;
//+
MeshSize {12} = 0.054236;
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
Save "../geo_unrolled/cad_097.geo_unrolled";
