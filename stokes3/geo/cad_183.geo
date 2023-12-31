//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.200671, -3.964590, 0.000000, 32.838422, 9.056794, 1.000000};
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
Cylinder(2) = {15.327717, 0.830426, 0.000000, 0.000000, 0.000000, 1.000000, 0.993361, 2*Pi};
//+
MeshSize {9} = 0.099336;
//+
MeshSize {10} = 0.099336;
//+
Cylinder(3) = {25.125643, -2.308333, 0.000000, 0.000000, 0.000000, 1.000000, 0.506378, 2*Pi};
//+
MeshSize {11} = 0.050638;
//+
MeshSize {12} = 0.050638;
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
Save "../geo_unrolled/cad_183.geo_unrolled";
