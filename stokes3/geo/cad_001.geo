//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.086939, -3.601376, 0.000000, 30.211033, 8.046595, 1.000000};
//+
MeshSize {1} = 3.056393;
//+
MeshSize {2} = 3.056393;
//+
MeshSize {3} = 3.056393;
//+
MeshSize {4} = 3.056393;
//+
MeshSize {5} = 1.060346;
//+
MeshSize {6} = 1.060346;
//+
MeshSize {7} = 1.064622;
//+
MeshSize {8} = 1.064622;
//+
Cylinder(2) = {19.690181, 0.361626, 0.000000, 0.000000, 0.000000, 1.000000, 0.720441, 2*Pi};
//+
MeshSize {9} = 0.072044;
//+
MeshSize {10} = 0.072044;
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
//+
Save "../geo_unrolled/cad_001.geo_unrolled";
