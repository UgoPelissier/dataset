//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.276201, -4.275031, 0.000000, 38.458462, 9.466377, 1.000000};
//+
MeshSize {1} = 3.902278;
//+
MeshSize {2} = 3.902278;
//+
MeshSize {3} = 3.902278;
//+
MeshSize {4} = 3.902278;
//+
MeshSize {5} = 1.435551;
//+
MeshSize {6} = 1.435551;
//+
MeshSize {7} = 1.450634;
//+
MeshSize {8} = 1.450634;
//+
Cylinder(2) = {24.133939, 0.213580, 0.000000, 0.000000, 0.000000, 1.000000, 0.919594, 2*Pi};
//+
MeshSize {9} = 0.091959;
//+
MeshSize {10} = 0.091959;
//+
Cylinder(3) = {20.747582, -1.477993, 0.000000, 0.000000, 0.000000, 1.000000, 0.910890, 2*Pi};
//+
MeshSize {11} = 0.091089;
//+
MeshSize {12} = 0.091089;
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
Save "../geo_unrolled/cad_206.geo_unrolled";
