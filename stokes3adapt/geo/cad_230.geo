//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.261613, -4.283173, 0.000000, 36.784069, 9.194822, 1.000000};
//+
MeshSize {1} = 2.744538;
//+
MeshSize {2} = 2.744538;
//+
MeshSize {3} = 2.453880;
//+
MeshSize {4} = 2.453880;
//+
MeshSize {5} = 0.638759;
//+
MeshSize {6} = 0.638759;
//+
MeshSize {7} = 0.612338;
//+
MeshSize {8} = 0.612338;
//+
Cylinder(2) = {28.433625, 0.704774, 0.000000, 0.000000, 0.000000, 1.000000, 1.065012, 2*Pi};
//+
MeshSize {9} = 0.106501;
//+
MeshSize {10} = 0.106501;
//+
Cylinder(3) = {19.378714, 1.844299, 0.000000, 0.000000, 0.000000, 1.000000, 0.595242, 2*Pi};
//+
MeshSize {11} = 0.059524;
//+
MeshSize {12} = 0.059524;
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
Save "../geo_unrolled/cad_230.geo_unrolled";
