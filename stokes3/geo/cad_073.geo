//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.567594, -3.861805, 0.000000, 29.958495, 7.893525, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {18.860183, 1.373226, 0.000000, 0.000000, 0.000000, 1.000000, 0.772103, 2*Pi};
//+
MeshSize {9} = 0.077210;
//+
MeshSize {10} = 0.077210;
//+
Cylinder(3) = {8.338715, 2.012400, 0.000000, 0.000000, 0.000000, 1.000000, 0.613818, 2*Pi};
//+
MeshSize {11} = 0.061382;
//+
MeshSize {12} = 0.061382;
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
Save "../geo_unrolled/cad_073.geo_unrolled";
