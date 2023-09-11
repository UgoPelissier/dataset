//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.756269, -4.424590, 0.000000, 35.758826, 9.790182, 1.000000};
//+
MeshSize {1} = 0.674773;
//+
MeshSize {2} = 0.674773;
//+
MeshSize {3} = 0.628069;
//+
MeshSize {4} = 0.628069;
//+
MeshSize {5} = 3.684174;
//+
MeshSize {6} = 3.684174;
//+
MeshSize {7} = 3.684174;
//+
MeshSize {8} = 3.684174;
//+
Cylinder(2) = {6.627093, 0.835393, 0.000000, 0.000000, 0.000000, 1.000000, 1.134785, 2*Pi};
//+
MeshSize {9} = 0.113478;
//+
MeshSize {10} = 0.113478;
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
