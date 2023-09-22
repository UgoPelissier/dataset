//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.180849, -3.663020, 0.000000, 33.615302, 8.035685, 1.000000};
//+
MeshSize {1} = 0.337399;
//+
MeshSize {2} = 0.337399;
//+
MeshSize {3} = 0.906217;
//+
MeshSize {4} = 0.906217;
//+
MeshSize {5} = 3.220845;
//+
MeshSize {6} = 3.220845;
//+
MeshSize {7} = 2.095080;
//+
MeshSize {8} = 2.095080;
//+
Cylinder(2) = {25.761916, 1.645153, 0.000000, 0.000000, 0.000000, 1.000000, 1.057132, 2*Pi};
//+
MeshSize {9} = 0.105713;
//+
MeshSize {10} = 0.105713;
//+
Cylinder(3) = {1.372413, -1.381210, 0.000000, 0.000000, 0.000000, 1.000000, 0.615723, 2*Pi};
//+
MeshSize {11} = 0.061572;
//+
MeshSize {12} = 0.061572;
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
Save "../geo_unrolled/cad_415.geo_unrolled";
