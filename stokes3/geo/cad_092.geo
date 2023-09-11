//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.744705, -3.527371, 0.000000, 37.369384, 8.465197, 1.000000};
//+
MeshSize {1} = 3.834839;
//+
MeshSize {2} = 3.834839;
//+
MeshSize {3} = 3.834839;
//+
MeshSize {4} = 3.834839;
//+
MeshSize {5} = 1.277666;
//+
MeshSize {6} = 1.277666;
//+
MeshSize {7} = 1.152865;
//+
MeshSize {8} = 1.152865;
//+
Cylinder(2) = {25.295895, 2.715191, 0.000000, 0.000000, 0.000000, 1.000000, 1.480818, 2*Pi};
//+
MeshSize {9} = 0.148082;
//+
MeshSize {10} = 0.148082;
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
Save "../geo_unrolled/cad_092.geo_unrolled";
