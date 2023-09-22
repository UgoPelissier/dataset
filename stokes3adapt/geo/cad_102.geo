//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.554021, -4.070648, 0.000000, 37.482596, 8.879117, 1.000000};
//+
MeshSize {1} = 2.867207;
//+
MeshSize {2} = 2.867207;
//+
MeshSize {3} = 3.088064;
//+
MeshSize {4} = 3.088064;
//+
MeshSize {5} = 0.626500;
//+
MeshSize {6} = 0.626500;
//+
MeshSize {7} = 0.496626;
//+
MeshSize {8} = 0.496626;
//+
Cylinder(2) = {29.256418, 2.870968, 0.000000, 0.000000, 0.000000, 1.000000, 0.573751, 2*Pi};
//+
MeshSize {9} = 0.057375;
//+
MeshSize {10} = 0.057375;
//+
Cylinder(3) = {25.869045, -1.380572, 0.000000, 0.000000, 0.000000, 1.000000, 1.377960, 2*Pi};
//+
MeshSize {11} = 0.137796;
//+
MeshSize {12} = 0.137796;
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
Save "../geo_unrolled/cad_102.geo_unrolled";
