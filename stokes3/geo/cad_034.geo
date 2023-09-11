//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.551680, -3.416368, 0.000000, 29.545017, 7.688110, 1.000000};
//+
MeshSize {1} = 3.034119;
//+
MeshSize {2} = 3.034119;
//+
MeshSize {3} = 3.034119;
//+
MeshSize {4} = 3.034119;
//+
MeshSize {5} = 0.576986;
//+
MeshSize {6} = 0.576986;
//+
MeshSize {7} = 0.551734;
//+
MeshSize {8} = 0.551734;
//+
Cylinder(2) = {25.118553, 0.634343, 0.000000, 0.000000, 0.000000, 1.000000, 0.648094, 2*Pi};
//+
MeshSize {9} = 0.064809;
//+
MeshSize {10} = 0.064809;
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
Save "../geo_unrolled/cad_034.geo_unrolled";
