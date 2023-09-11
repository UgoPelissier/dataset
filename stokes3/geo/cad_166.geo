//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.043806, -4.717244, 0.000000, 30.375253, 9.833427, 1.000000};
//+
MeshSize {1} = 0.982827;
//+
MeshSize {2} = 0.982827;
//+
MeshSize {3} = 0.740801;
//+
MeshSize {4} = 0.740801;
//+
MeshSize {5} = 3.081385;
//+
MeshSize {6} = 3.081385;
//+
MeshSize {7} = 3.081385;
//+
MeshSize {8} = 3.081385;
//+
Cylinder(2) = {7.705566, 2.490718, 0.000000, 0.000000, 0.000000, 1.000000, 0.691103, 2*Pi};
//+
MeshSize {9} = 0.069110;
//+
MeshSize {10} = 0.069110;
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
Save "../geo_unrolled/cad_166.geo_unrolled";
