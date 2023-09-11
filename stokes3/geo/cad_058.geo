//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.949612, -3.741117, 0.000000, 29.254188, 7.880956, 1.000000};
//+
MeshSize {1} = 0.476418;
//+
MeshSize {2} = 0.476418;
//+
MeshSize {3} = 0.294348;
//+
MeshSize {4} = 0.294348;
//+
MeshSize {5} = 3.045976;
//+
MeshSize {6} = 3.045976;
//+
MeshSize {7} = 3.045976;
//+
MeshSize {8} = 3.045976;
//+
Cylinder(2) = {3.812353, 1.335498, 0.000000, 0.000000, 0.000000, 1.000000, 1.063970, 2*Pi};
//+
MeshSize {9} = 0.106397;
//+
MeshSize {10} = 0.106397;
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
Save "../geo_unrolled/cad_058.geo_unrolled";
