//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.833745, -4.280501, 0.000000, 35.283033, 9.968083, 1.000000};
//+
MeshSize {1} = 1.015830;
//+
MeshSize {2} = 1.015830;
//+
MeshSize {3} = 0.933382;
//+
MeshSize {4} = 0.933382;
//+
MeshSize {5} = 3.645905;
//+
MeshSize {6} = 3.645905;
//+
MeshSize {7} = 3.645905;
//+
MeshSize {8} = 3.645905;
//+
Cylinder(2) = {10.812596, 1.628672, 0.000000, 0.000000, 0.000000, 1.000000, 1.438930, 2*Pi};
//+
MeshSize {9} = 0.143893;
//+
MeshSize {10} = 0.143893;
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
//+
Save "../geo_unrolled/cad_030.geo_unrolled";
