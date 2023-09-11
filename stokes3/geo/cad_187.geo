//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.466473, -3.603543, 0.000000, 32.012716, 7.742029, 1.000000};
//+
MeshSize {1} = 0.824391;
//+
MeshSize {2} = 0.824391;
//+
MeshSize {3} = 0.916206;
//+
MeshSize {4} = 0.916206;
//+
MeshSize {5} = 3.270906;
//+
MeshSize {6} = 3.270906;
//+
MeshSize {7} = 3.270906;
//+
MeshSize {8} = 3.270906;
//+
Cylinder(2) = {9.425851, -0.896915, 0.000000, 0.000000, 0.000000, 1.000000, 1.115377, 2*Pi};
//+
MeshSize {9} = 0.111538;
//+
MeshSize {10} = 0.111538;
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
Save "../geo_unrolled/cad_187.geo_unrolled";
