//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.731786, -3.169804, 0.000000, 30.595334, 8.239476, 1.000000};
//+
MeshSize {1} = 0.870329;
//+
MeshSize {2} = 0.870329;
//+
MeshSize {3} = 0.859151;
//+
MeshSize {4} = 0.859151;
//+
MeshSize {5} = 0.870329;
//+
MeshSize {6} = 0.870329;
//+
MeshSize {7} = 3.159685;
//+
MeshSize {8} = 3.159685;
//+
Cylinder(2) = {9.549653, 1.675122, 0.000000, 0.000000, 0.000000, 1.000000, 1.357922, 2*Pi};
//+
MeshSize {9} = 0.135792;
//+
MeshSize {10} = 0.135792;
//+
Cylinder(3) = {24.179368, 3.083204, 0.000000, 0.000000, 0.000000, 1.000000, 0.905360, 2*Pi};
//+
MeshSize {11} = 0.090536;
//+
MeshSize {12} = 0.090536;
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
Save "../geo_unrolled/cad_497.geo_unrolled";
