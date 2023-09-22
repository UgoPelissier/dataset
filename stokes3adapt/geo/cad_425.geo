//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.787150, -3.268814, 0.000000, 34.571191, 8.218389, 1.000000};
//+
MeshSize {1} = 0.325982;
//+
MeshSize {2} = 0.325982;
//+
MeshSize {3} = 0.128598;
//+
MeshSize {4} = 0.128598;
//+
MeshSize {5} = 5.677102;
//+
MeshSize {6} = 5.677102;
//+
MeshSize {7} = 5.465721;
//+
MeshSize {8} = 5.465721;
//+
Cylinder(2) = {7.986953, 1.996148, 0.000000, 0.000000, 0.000000, 1.000000, 0.591958, 2*Pi};
//+
MeshSize {9} = 0.059196;
//+
MeshSize {10} = 0.059196;
//+
Cylinder(3) = {2.378548, 2.475261, 0.000000, 0.000000, 0.000000, 1.000000, 0.975268, 2*Pi};
//+
MeshSize {11} = 0.097527;
//+
MeshSize {12} = 0.097527;
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
Save "../geo_unrolled/cad_425.geo_unrolled";
