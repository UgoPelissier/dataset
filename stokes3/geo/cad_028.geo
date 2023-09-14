//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.335188, -3.772571, 0.000000, 37.176193, 9.181989, 1.000000};
//+
MeshSize {1} = 0.269988;
//+
MeshSize {2} = 0.269988;
//+
MeshSize {3} = 0.551271;
//+
MeshSize {4} = 0.551271;
//+
MeshSize {5} = 3.779128;
//+
MeshSize {6} = 3.779128;
//+
MeshSize {7} = 3.779128;
//+
MeshSize {8} = 3.779128;
//+
Cylinder(2) = {9.184382, -0.228298, 0.000000, 0.000000, 0.000000, 1.000000, 1.349738, 2*Pi};
//+
MeshSize {9} = 0.134974;
//+
MeshSize {10} = 0.134974;
//+
Cylinder(3) = {2.731887, -0.785602, 0.000000, 0.000000, 0.000000, 1.000000, 1.129765, 2*Pi};
//+
MeshSize {11} = 0.112977;
//+
MeshSize {12} = 0.112977;
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
Save "../geo_unrolled/cad_028.geo_unrolled";
