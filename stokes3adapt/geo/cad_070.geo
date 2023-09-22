//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.353598, -4.169775, 0.000000, 37.149244, 9.670230, 1.000000};
//+
MeshSize {1} = 0.983751;
//+
MeshSize {2} = 0.983751;
//+
MeshSize {3} = 0.979059;
//+
MeshSize {4} = 0.979059;
//+
MeshSize {5} = 0.932372;
//+
MeshSize {6} = 0.932372;
//+
MeshSize {7} = 1.348564;
//+
MeshSize {8} = 1.348564;
//+
Cylinder(2) = {13.187732, 0.753490, 0.000000, 0.000000, 0.000000, 1.000000, 0.712739, 2*Pi};
//+
MeshSize {9} = 0.071274;
//+
MeshSize {10} = 0.071274;
//+
Cylinder(3) = {24.629478, -2.666616, 0.000000, 0.000000, 0.000000, 1.000000, 0.608218, 2*Pi};
//+
MeshSize {11} = 0.060822;
//+
MeshSize {12} = 0.060822;
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
Save "../geo_unrolled/cad_070.geo_unrolled";
