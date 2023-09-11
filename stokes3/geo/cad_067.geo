//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.880320, -3.061505, 0.000000, 31.882366, 7.525378, 1.000000};
//+
MeshSize {1} = 1.474247;
//+
MeshSize {2} = 1.474247;
//+
MeshSize {3} = 1.414484;
//+
MeshSize {4} = 1.414484;
//+
MeshSize {5} = 1.629630;
//+
MeshSize {6} = 1.629630;
//+
MeshSize {7} = 1.575356;
//+
MeshSize {8} = 1.575356;
//+
Cylinder(2) = {16.007122, 1.942787, 0.000000, 0.000000, 0.000000, 1.000000, 1.190609, 2*Pi};
//+
MeshSize {9} = 0.119061;
//+
MeshSize {10} = 0.119061;
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
Save "../geo_unrolled/cad_067.geo_unrolled";
