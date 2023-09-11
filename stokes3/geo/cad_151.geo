//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.137565, -3.799261, 0.000000, 38.306719, 7.752852, 1.000000};
//+
l = [0.5003486072110624, 0.5003486072110624, 0.5003486072110624, 3.8639224135000085, 3.8639224135000085, 3.8639224135000085, 3.8639224135000085, 0.6274391686429913, 0.6274391686429913, 0.6274391686429913];
//+
MeshSize {1} = 0.500349;
//+
MeshSize {2} = 0.500349;
//+
MeshSize {3} = 0.500349;
//+
MeshSize {4} = 3.863922;
//+
MeshSize {5} = 3.863922;
//+
MeshSize {6} = 3.863922;
//+
MeshSize {7} = 3.863922;
//+
MeshSize {8} = 0.627439;
//+
Cylinder(2) = {5.038087, -0.955773, 0.000000, 0.000000, 0.000000, 1.000000, 0.662247, 2*Pi};
//+
c0 = 0.06622472120884505;
//+
MeshSize {9, 10} = c0;
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
