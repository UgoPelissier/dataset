//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.366970, -3.652870, 0.000000, 35.314526, 9.262206, 1.000000};
//+
MeshSize {1} = 0.386901;
//+
MeshSize {2} = 0.386901;
//+
MeshSize {3} = 0.255320;
//+
MeshSize {4} = 0.255320;
//+
MeshSize {5} = 3.598078;
//+
MeshSize {6} = 3.598078;
//+
MeshSize {7} = 3.598078;
//+
MeshSize {8} = 3.598078;
//+
Cylinder(2) = {4.037874, -0.171046, 0.000000, 0.000000, 0.000000, 1.000000, 1.190497, 2*Pi};
//+
MeshSize {9} = 0.119050;
//+
MeshSize {10} = 0.119050;
//+
Cylinder(3) = {2.791528, 3.611478, 0.000000, 0.000000, 0.000000, 1.000000, 0.588446, 2*Pi};
//+
MeshSize {11} = 0.058845;
//+
MeshSize {12} = 0.058845;
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
Save "../geo_unrolled/cad_360.geo_unrolled";
