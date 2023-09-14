//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.880132, -3.889715, 0.000000, 33.232386, 8.607511, 1.000000};
//+
MeshSize {1} = 0.708591;
//+
MeshSize {2} = 0.708591;
//+
MeshSize {3} = 0.484151;
//+
MeshSize {4} = 0.484151;
//+
MeshSize {5} = 3.438293;
//+
MeshSize {6} = 3.438293;
//+
MeshSize {7} = 3.438293;
//+
MeshSize {8} = 3.438293;
//+
Cylinder(2) = {9.339876, 2.402424, 0.000000, 0.000000, 0.000000, 1.000000, 0.606771, 2*Pi};
//+
MeshSize {9} = 0.060677;
//+
MeshSize {10} = 0.060677;
//+
Cylinder(3) = {6.302168, 2.259020, 0.000000, 0.000000, 0.000000, 1.000000, 1.111982, 2*Pi};
//+
MeshSize {11} = 0.111198;
//+
MeshSize {12} = 0.111198;
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
Save "../geo_unrolled/cad_322.geo_unrolled";
