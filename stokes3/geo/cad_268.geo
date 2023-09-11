//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.030861, -3.332510, 0.000000, 32.890038, 8.187132, 1.000000};
//+
MeshSize {1} = 3.317443;
//+
MeshSize {2} = 3.317443;
//+
MeshSize {3} = 3.317443;
//+
MeshSize {4} = 3.317443;
//+
MeshSize {5} = 0.906005;
//+
MeshSize {6} = 0.906005;
//+
MeshSize {7} = 0.906005;
//+
MeshSize {8} = 0.491231;
//+
Cylinder(2) = {24.444368, 2.177119, 0.000000, 0.000000, 0.000000, 1.000000, 1.049726, 2*Pi};
//+
MeshSize {9} = 0.104973;
//+
MeshSize {10} = 0.104973;
//+
Cylinder(3) = {27.103210, -1.090020, 0.000000, 0.000000, 0.000000, 1.000000, 1.322611, 2*Pi};
//+
MeshSize {11} = 0.132261;
//+
MeshSize {12} = 0.132261;
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
