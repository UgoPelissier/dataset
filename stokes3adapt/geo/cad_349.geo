//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.455584, -3.647268, 0.000000, 36.646575, 8.663491, 1.000000};
//+
MeshSize {1} = 2.638557;
//+
MeshSize {2} = 2.638557;
//+
MeshSize {3} = 2.276605;
//+
MeshSize {4} = 2.276605;
//+
MeshSize {5} = 0.667779;
//+
MeshSize {6} = 0.667779;
//+
MeshSize {7} = 0.634873;
//+
MeshSize {8} = 0.634873;
//+
Cylinder(2) = {22.889883, 3.576823, 0.000000, 0.000000, 0.000000, 1.000000, 0.892077, 2*Pi};
//+
MeshSize {9} = 0.089208;
//+
MeshSize {10} = 0.089208;
//+
Cylinder(3) = {25.957213, 1.431041, 0.000000, 0.000000, 0.000000, 1.000000, 1.288779, 2*Pi};
//+
MeshSize {11} = 0.128878;
//+
MeshSize {12} = 0.128878;
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
Save "../geo_unrolled/cad_349.geo_unrolled";
