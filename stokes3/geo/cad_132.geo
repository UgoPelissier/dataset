//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.667133, -4.453739, 0.000000, 33.285501, 8.998312, 1.000000};
//+
MeshSize {1} = 0.375648;
//+
MeshSize {2} = 0.375648;
//+
MeshSize {3} = 0.700941;
//+
MeshSize {4} = 0.700941;
//+
MeshSize {5} = 3.424943;
//+
MeshSize {6} = 3.424943;
//+
MeshSize {7} = 3.424943;
//+
MeshSize {8} = 3.424943;
//+
Cylinder(2) = {4.659483, -2.199912, 0.000000, 0.000000, 0.000000, 1.000000, 0.828122, 2*Pi};
//+
MeshSize {9} = 0.082812;
//+
MeshSize {10} = 0.082812;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_132.geo_unrolled";
