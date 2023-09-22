//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.448928, -4.226769, 0.000000, 32.645751, 9.521560, 1.000000};
//+
MeshSize {1} = 0.628075;
//+
MeshSize {2} = 0.628075;
//+
MeshSize {3} = 0.744441;
//+
MeshSize {4} = 0.744441;
//+
MeshSize {5} = 2.545156;
//+
MeshSize {6} = 2.545156;
//+
MeshSize {7} = 2.010647;
//+
MeshSize {8} = 2.010647;
//+
Cylinder(2) = {15.521921, 3.190802, 0.000000, 0.000000, 0.000000, 1.000000, 0.867841, 2*Pi};
//+
MeshSize {9} = 0.086784;
//+
MeshSize {10} = 0.086784;
//+
Cylinder(3) = {9.325145, -1.124759, 0.000000, 0.000000, 0.000000, 1.000000, 1.027460, 2*Pi};
//+
MeshSize {11} = 0.102746;
//+
MeshSize {12} = 0.102746;
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
Save "../geo_unrolled/cad_088.geo_unrolled";
