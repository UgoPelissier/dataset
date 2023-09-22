//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.613068, -4.511647, 0.000000, 39.293089, 9.348298, 1.000000};
//+
MeshSize {1} = 0.703092;
//+
MeshSize {2} = 0.703092;
//+
MeshSize {3} = 0.789772;
//+
MeshSize {4} = 0.789772;
//+
MeshSize {5} = 2.111293;
//+
MeshSize {6} = 2.111293;
//+
MeshSize {7} = 1.834960;
//+
MeshSize {8} = 1.834960;
//+
Cylinder(2) = {11.941293, -1.529630, 0.000000, 0.000000, 0.000000, 1.000000, 1.328289, 2*Pi};
//+
MeshSize {9} = 0.132829;
//+
MeshSize {10} = 0.132829;
//+
Cylinder(3) = {21.243637, 1.951362, 0.000000, 0.000000, 0.000000, 1.000000, 0.799791, 2*Pi};
//+
MeshSize {11} = 0.079979;
//+
MeshSize {12} = 0.079979;
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
Save "../geo_unrolled/cad_113.geo_unrolled";
