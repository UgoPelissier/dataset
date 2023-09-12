//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.133146, -3.420195, 0.000000, 31.295384, 8.826271, 1.000000};
//+
MeshSize {1} = 3.173686;
//+
MeshSize {2} = 3.173686;
//+
MeshSize {3} = 0.918778;
//+
MeshSize {4} = 0.918778;
//+
MeshSize {5} = 1.241227;
//+
MeshSize {6} = 1.241227;
//+
MeshSize {7} = 0.918778;
//+
MeshSize {8} = 0.918778;
//+
Cylinder(2) = {22.704977, 1.130469, 0.000000, 0.000000, 0.000000, 1.000000, 0.651374, 2*Pi};
//+
MeshSize {9} = 0.065137;
//+
MeshSize {10} = 0.065137;
//+
Cylinder(3) = {12.939437, 1.646684, 0.000000, 0.000000, 0.000000, 1.000000, 1.359963, 2*Pi};
//+
MeshSize {11} = 0.135996;
//+
MeshSize {12} = 0.135996;
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
Save "../geo_unrolled/cad_171.geo_unrolled";
