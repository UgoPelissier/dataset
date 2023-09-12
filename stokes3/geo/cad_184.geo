//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.410036, -4.566470, 0.000000, 33.054201, 9.598935, 1.000000};
//+
MeshSize {1} = 0.500328;
//+
MeshSize {2} = 0.500328;
//+
MeshSize {3} = 0.466730;
//+
MeshSize {4} = 0.466730;
//+
MeshSize {5} = 0.500328;
//+
MeshSize {6} = 0.500328;
//+
MeshSize {7} = 3.380666;
//+
MeshSize {8} = 3.380666;
//+
Cylinder(2) = {3.478575, 0.286187, 0.000000, 0.000000, 0.000000, 1.000000, 0.738168, 2*Pi};
//+
MeshSize {9} = 0.073817;
//+
MeshSize {10} = 0.073817;
//+
Cylinder(3) = {30.027041, 0.189667, 0.000000, 0.000000, 0.000000, 1.000000, 1.200847, 2*Pi};
//+
MeshSize {11} = 0.120085;
//+
MeshSize {12} = 0.120085;
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
Save "../geo_unrolled/cad_184.geo_unrolled";
