//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.021488, -3.919570, 0.000000, 35.272665, 8.333924, 1.000000};
//+
MeshSize {1} = 0.484251;
//+
MeshSize {2} = 0.484251;
//+
MeshSize {3} = 0.623290;
//+
MeshSize {4} = 0.623290;
//+
MeshSize {5} = 3.082724;
//+
MeshSize {6} = 3.082724;
//+
MeshSize {7} = 2.967810;
//+
MeshSize {8} = 2.967810;
//+
Cylinder(2) = {12.420474, 1.043665, 0.000000, 0.000000, 0.000000, 1.000000, 0.736205, 2*Pi};
//+
MeshSize {9} = 0.073620;
//+
MeshSize {10} = 0.073620;
//+
Cylinder(3) = {8.026878, -2.163813, 0.000000, 0.000000, 0.000000, 1.000000, 0.652749, 2*Pi};
//+
MeshSize {11} = 0.065275;
//+
MeshSize {12} = 0.065275;
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
Save "../geo_unrolled/cad_319.geo_unrolled";
