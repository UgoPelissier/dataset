//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.317758, -4.280481, 0.000000, 39.116264, 9.771117, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {14.575996, -1.242582, 0.000000, 0.000000, 0.000000, 1.000000, 0.784650, 2*Pi};
//+
MeshSize {9} = 0.078465;
//+
MeshSize {10} = 0.078465;
//+
Cylinder(3) = {3.454366, 2.226382, 0.000000, 0.000000, 0.000000, 1.000000, 0.944220, 2*Pi};
//+
MeshSize {11} = 0.094422;
//+
MeshSize {12} = 0.094422;
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
Save "../geo_unrolled/cad_402.geo_unrolled";
