//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.703300, -3.971666, 0.000000, 34.678015, 9.468263, 1.000000};
//+
MeshSize {1} = 3.569663;
//+
MeshSize {2} = 3.569663;
//+
MeshSize {3} = 0.698973;
//+
MeshSize {4} = 0.698973;
//+
MeshSize {5} = 1.234664;
//+
MeshSize {6} = 1.234664;
//+
MeshSize {7} = 0.698973;
//+
MeshSize {8} = 0.698973;
//+
Cylinder(2) = {29.440221, 1.624878, 0.000000, 0.000000, 0.000000, 1.000000, 1.172246, 2*Pi};
//+
MeshSize {9} = 0.117225;
//+
MeshSize {10} = 0.117225;
//+
Cylinder(3) = {12.489418, 2.961495, 0.000000, 0.000000, 0.000000, 1.000000, 1.327467, 2*Pi};
//+
MeshSize {11} = 0.132747;
//+
MeshSize {12} = 0.132747;
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
Save "../geo_unrolled/cad_489.geo_unrolled";
