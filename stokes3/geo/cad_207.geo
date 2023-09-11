//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.770766, -4.906193, 0.000000, 34.732760, 9.822749, 1.000000};
//+
MeshSize {1} = 1.097037;
//+
MeshSize {2} = 1.097037;
//+
MeshSize {3} = 0.978000;
//+
MeshSize {4} = 0.978000;
//+
MeshSize {5} = 3.584162;
//+
MeshSize {6} = 3.584162;
//+
MeshSize {7} = 3.584162;
//+
MeshSize {8} = 3.584162;
//+
Cylinder(2) = {11.402586, 1.433119, 0.000000, 0.000000, 0.000000, 1.000000, 1.407937, 2*Pi};
//+
MeshSize {9} = 0.140794;
//+
MeshSize {10} = 0.140794;
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
Save "../geo_unrolled/cad_207.geo_unrolled";
