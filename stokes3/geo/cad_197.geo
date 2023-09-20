//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.708966, -3.669185, 0.000000, 38.157569, 8.616575, 1.000000};
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
Cylinder(2) = {10.307889, -2.158100, 0.000000, 0.000000, 0.000000, 1.000000, 0.567795, 2*Pi};
//+
MeshSize {9} = 0.056779;
//+
MeshSize {10} = 0.056779;
//+
Cylinder(3) = {15.000038, 2.004082, 0.000000, 0.000000, 0.000000, 1.000000, 1.469102, 2*Pi};
//+
MeshSize {11} = 0.146910;
//+
MeshSize {12} = 0.146910;
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
Save "../geo_unrolled/cad_197.geo_unrolled";
