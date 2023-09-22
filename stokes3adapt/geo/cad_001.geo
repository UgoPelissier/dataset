//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.218638, -3.493192, 0.000000, 30.046722, 7.997094, 1.000000};
//+
MeshSize {1} = 2.098144;
//+
MeshSize {2} = 2.098144;
//+
MeshSize {3} = 1.810769;
//+
MeshSize {4} = 1.810769;
//+
MeshSize {5} = 0.746822;
//+
MeshSize {6} = 0.746822;
//+
MeshSize {7} = 0.754114;
//+
MeshSize {8} = 0.754114;
//+
Cylinder(2) = {19.668986, 0.359401, 0.000000, 0.000000, 0.000000, 1.000000, 0.720441, 2*Pi};
//+
MeshSize {9} = 0.072044;
//+
MeshSize {10} = 0.072044;
//+
Cylinder(3) = {17.834338, 2.474544, 0.000000, 0.000000, 0.000000, 1.000000, 0.506499, 2*Pi};
//+
MeshSize {11} = 0.050650;
//+
MeshSize {12} = 0.050650;
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
Save "../geo_unrolled/cad_001.geo_unrolled";
