//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.417157, -3.564051, 0.000000, 36.461275, 8.111876, 1.000000};
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
Cylinder(2) = {2.460707, 1.991997, 0.000000, 0.000000, 0.000000, 1.000000, 1.081066, 2*Pi};
//+
MeshSize {9} = 0.108107;
//+
MeshSize {10} = 0.108107;
//+
Cylinder(3) = {17.555635, 1.575692, 0.000000, 0.000000, 0.000000, 1.000000, 0.619584, 2*Pi};
//+
MeshSize {11} = 0.061958;
//+
MeshSize {12} = 0.061958;
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
Save "../geo_unrolled/cad_406.geo_unrolled";
