//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.892672, -4.389051, 0.000000, 39.052979, 9.409189, 1.000000};
//+
MeshSize {1} = 0.811490;
//+
MeshSize {2} = 0.811490;
//+
MeshSize {3} = 0.426511;
//+
MeshSize {4} = 0.426511;
//+
MeshSize {5} = 1.084692;
//+
MeshSize {6} = 1.084692;
//+
MeshSize {7} = 1.152486;
//+
MeshSize {8} = 1.152486;
//+
Cylinder(2) = {6.042369, 3.321760, 0.000000, 0.000000, 0.000000, 1.000000, 1.157419, 2*Pi};
//+
MeshSize {9} = 0.115742;
//+
MeshSize {10} = 0.115742;
//+
Cylinder(3) = {28.200146, -0.598143, 0.000000, 0.000000, 0.000000, 1.000000, 1.495202, 2*Pi};
//+
MeshSize {11} = 0.149520;
//+
MeshSize {12} = 0.149520;
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
Save "../geo_unrolled/cad_446.geo_unrolled";
