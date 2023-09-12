//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.925676, -4.768509, 0.000000, 30.074003, 9.618417, 1.000000};
//+
MeshSize {1} = 3.137050;
//+
MeshSize {2} = 3.137050;
//+
MeshSize {3} = 1.361526;
//+
MeshSize {4} = 1.361526;
//+
MeshSize {5} = 1.297984;
//+
MeshSize {6} = 1.297984;
//+
MeshSize {7} = 1.361526;
//+
MeshSize {8} = 1.361526;
//+
Cylinder(2) = {18.985490, 2.670665, 0.000000, 0.000000, 0.000000, 1.000000, 0.515630, 2*Pi};
//+
MeshSize {9} = 0.051563;
//+
MeshSize {10} = 0.051563;
//+
Cylinder(3) = {12.902756, 2.956815, 0.000000, 0.000000, 0.000000, 1.000000, 1.272563, 2*Pi};
//+
MeshSize {11} = 0.127256;
//+
MeshSize {12} = 0.127256;
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
Save "../geo_unrolled/cad_380.geo_unrolled";
