//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.660855, -3.500097, 0.000000, 31.872948, 8.137151, 1.000000};
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
Cylinder(2) = {2.660275, 0.028029, 0.000000, 0.000000, 0.000000, 1.000000, 0.613935, 2*Pi};
//+
MeshSize {9} = 0.061394;
//+
MeshSize {10} = 0.061394;
//+
Cylinder(3) = {9.683606, 0.709628, 0.000000, 0.000000, 0.000000, 1.000000, 0.954998, 2*Pi};
//+
MeshSize {11} = 0.095500;
//+
MeshSize {12} = 0.095500;
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
Save "../geo_unrolled/cad_455.geo_unrolled";
