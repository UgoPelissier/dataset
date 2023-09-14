//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.867410, -3.576465, 0.000000, 31.444276, 8.451753, 1.000000};
//+
MeshSize {1} = 1.421836;
//+
MeshSize {2} = 1.421836;
//+
MeshSize {3} = 1.475192;
//+
MeshSize {4} = 1.475192;
//+
MeshSize {5} = 0.508433;
//+
MeshSize {6} = 0.508433;
//+
MeshSize {7} = 0.561993;
//+
MeshSize {8} = 0.561993;
//+
Cylinder(2) = {28.006889, 0.266743, 0.000000, 0.000000, 0.000000, 1.000000, 0.686417, 2*Pi};
//+
MeshSize {9} = 0.068642;
//+
MeshSize {10} = 0.068642;
//+
Cylinder(3) = {16.176872, -0.355090, 0.000000, 0.000000, 0.000000, 1.000000, 1.426350, 2*Pi};
//+
MeshSize {11} = 0.142635;
//+
MeshSize {12} = 0.142635;
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
Save "../geo_unrolled/cad_318.geo_unrolled";
