//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.360729, -3.569943, 0.000000, 36.542205, 8.487493, 1.000000};
//+
MeshSize {1} = 3.714614;
//+
MeshSize {2} = 3.714614;
//+
MeshSize {3} = 1.214881;
//+
MeshSize {4} = 1.214881;
//+
MeshSize {5} = 1.655094;
//+
MeshSize {6} = 1.655094;
//+
MeshSize {7} = 1.214881;
//+
MeshSize {8} = 1.214881;
//+
Cylinder(2) = {23.977306, -0.544995, 0.000000, 0.000000, 0.000000, 1.000000, 1.126059, 2*Pi};
//+
MeshSize {9} = 0.112606;
//+
MeshSize {10} = 0.112606;
//+
Cylinder(3) = {17.101762, -0.220767, 0.000000, 0.000000, 0.000000, 1.000000, 0.521817, 2*Pi};
//+
MeshSize {11} = 0.052182;
//+
MeshSize {12} = 0.052182;
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
Save "../geo_unrolled/cad_458.geo_unrolled";
