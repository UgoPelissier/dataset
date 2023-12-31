//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.784307, -3.781795, 0.000000, 32.092079, 9.161234, 1.000000};
//+
MeshSize {1} = 5.462343;
//+
MeshSize {2} = 5.462343;
//+
MeshSize {3} = 4.863137;
//+
MeshSize {4} = 4.863137;
//+
MeshSize {5} = 0.158083;
//+
MeshSize {6} = 0.158083;
//+
MeshSize {7} = 0.386551;
//+
MeshSize {8} = 0.386551;
//+
Cylinder(2) = {30.459473, -1.030138, 0.000000, 0.000000, 0.000000, 1.000000, 1.456702, 2*Pi};
//+
MeshSize {9} = 0.145670;
//+
MeshSize {10} = 0.145670;
//+
Cylinder(3) = {25.673989, 3.390738, 0.000000, 0.000000, 0.000000, 1.000000, 1.329983, 2*Pi};
//+
MeshSize {11} = 0.132998;
//+
MeshSize {12} = 0.132998;
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
Save "../geo_unrolled/cad_243.geo_unrolled";
