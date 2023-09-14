//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.370377, -3.993420, 0.000000, 34.927788, 8.073716, 1.000000};
//+
MeshSize {1} = 3.552825;
//+
MeshSize {2} = 3.552825;
//+
MeshSize {3} = 3.552825;
//+
MeshSize {4} = 3.552825;
//+
MeshSize {5} = 0.854123;
//+
MeshSize {6} = 0.854123;
//+
MeshSize {7} = 0.631147;
//+
MeshSize {8} = 0.631147;
//+
Cylinder(2) = {28.319725, 2.337789, 0.000000, 0.000000, 0.000000, 1.000000, 0.881236, 2*Pi};
//+
MeshSize {9} = 0.088124;
//+
MeshSize {10} = 0.088124;
//+
Cylinder(3) = {20.792317, 1.948947, 0.000000, 0.000000, 0.000000, 1.000000, 1.261539, 2*Pi};
//+
MeshSize {11} = 0.126154;
//+
MeshSize {12} = 0.126154;
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
Save "../geo_unrolled/cad_268.geo_unrolled";
