//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.464988, -3.899323, 0.000000, 31.672026, 8.682965, 1.000000};
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
Cylinder(2) = {28.961261, 2.570373, 0.000000, 0.000000, 0.000000, 1.000000, 0.669691, 2*Pi};
//+
MeshSize {9} = 0.066969;
//+
MeshSize {10} = 0.066969;
//+
Cylinder(3) = {2.725075, 0.134169, 0.000000, 0.000000, 0.000000, 1.000000, 1.132941, 2*Pi};
//+
MeshSize {11} = 0.113294;
//+
MeshSize {12} = 0.113294;
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
Save "../geo_unrolled/cad_027.geo_unrolled";
