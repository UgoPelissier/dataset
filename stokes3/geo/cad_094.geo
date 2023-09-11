//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.409979, -3.682082, 0.000000, 31.133634, 8.673727, 1.000000};
//+
MeshSize {1} = 3.184035;
//+
MeshSize {2} = 3.184035;
//+
MeshSize {3} = 3.184035;
//+
MeshSize {4} = 3.184035;
//+
MeshSize {5} = 1.158355;
//+
MeshSize {6} = 1.158355;
//+
MeshSize {7} = 0.986224;
//+
MeshSize {8} = 0.986224;
//+
Cylinder(2) = {20.498195, 3.051116, 0.000000, 0.000000, 0.000000, 1.000000, 1.352341, 2*Pi};
//+
MeshSize {9} = 0.135234;
//+
MeshSize {10} = 0.135234;
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
//+
Save "../geo_unrolled/cad_094.geo_unrolled";
