//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.628248, -3.232762, 0.000000, 35.835158, 8.272332, 1.000000};
//+
MeshSize {1} = 1.469588;
//+
MeshSize {2} = 1.469588;
//+
MeshSize {3} = 1.482269;
//+
MeshSize {4} = 1.482269;
//+
MeshSize {5} = 3.669725;
//+
MeshSize {6} = 3.669725;
//+
MeshSize {7} = 3.669725;
//+
MeshSize {8} = 3.669725;
//+
Cylinder(2) = {16.073915, 0.658261, 0.000000, 0.000000, 0.000000, 1.000000, 1.232360, 2*Pi};
//+
MeshSize {9} = 0.123236;
//+
MeshSize {10} = 0.123236;
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
Save "../geo_unrolled/cad_103.geo_unrolled";
