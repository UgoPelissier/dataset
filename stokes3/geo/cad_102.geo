//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.352321, -3.960588, 0.000000, 35.856591, 9.194411, 1.000000};
//+
MeshSize {1} = 3.649958;
//+
MeshSize {2} = 3.649958;
//+
MeshSize {3} = 1.013032;
//+
MeshSize {4} = 1.013032;
//+
MeshSize {5} = 1.013032;
//+
MeshSize {6} = 0.944699;
//+
MeshSize {7} = 0.944699;
//+
MeshSize {8} = 0.944699;
//+
Cylinder(2) = {26.104032, 1.463581, 0.000000, 0.000000, 0.000000, 1.000000, 1.338337, 2*Pi};
//+
MeshSize {9} = 0.133834;
//+
MeshSize {10} = 0.133834;
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
