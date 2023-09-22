//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.709337, -3.843578, 0.000000, 39.103179, 8.096582, 1.000000};
//+
MeshSize {1} = 0.533661;
//+
MeshSize {2} = 0.533661;
//+
MeshSize {3} = 0.610008;
//+
MeshSize {4} = 0.610008;
//+
MeshSize {5} = 2.228367;
//+
MeshSize {6} = 2.228367;
//+
MeshSize {7} = 3.725126;
//+
MeshSize {8} = 3.725126;
//+
Cylinder(2) = {4.521017, -0.174129, 0.000000, 0.000000, 0.000000, 1.000000, 1.439148, 2*Pi};
//+
MeshSize {9} = 0.143915;
//+
MeshSize {10} = 0.143915;
//+
Cylinder(3) = {29.660990, -2.223020, 0.000000, 0.000000, 0.000000, 1.000000, 0.852712, 2*Pi};
//+
MeshSize {11} = 0.085271;
//+
MeshSize {12} = 0.085271;
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
Save "../geo_unrolled/cad_392.geo_unrolled";
