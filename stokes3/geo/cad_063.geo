//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.887259, -4.452444, 0.000000, 33.649178, 9.176216, 1.000000};
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
Cylinder(2) = {3.419855, -0.097754, 0.000000, 0.000000, 0.000000, 1.000000, 0.908116, 2*Pi};
//+
MeshSize {9} = 0.090812;
//+
MeshSize {10} = 0.090812;
//+
Cylinder(3) = {15.704318, 1.493601, 0.000000, 0.000000, 0.000000, 1.000000, 1.141704, 2*Pi};
//+
MeshSize {11} = 0.114170;
//+
MeshSize {12} = 0.114170;
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
Save "../geo_unrolled/cad_063.geo_unrolled";
