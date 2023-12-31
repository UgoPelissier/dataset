//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.161999, -3.885978, 0.000000, 33.006783, 8.228391, 1.000000};
//+
MeshSize {1} = 0.150705;
//+
MeshSize {2} = 0.150705;
//+
MeshSize {3} = 0.486128;
//+
MeshSize {4} = 0.486128;
//+
MeshSize {5} = 4.851527;
//+
MeshSize {6} = 4.851527;
//+
MeshSize {7} = 4.659867;
//+
MeshSize {8} = 4.659867;
//+
Cylinder(2) = {8.871734, 1.190190, 0.000000, 0.000000, 0.000000, 1.000000, 0.771248, 2*Pi};
//+
MeshSize {9} = 0.077125;
//+
MeshSize {10} = 0.077125;
//+
Cylinder(3) = {2.655650, -2.740791, 0.000000, 0.000000, 0.000000, 1.000000, 0.603009, 2*Pi};
//+
MeshSize {11} = 0.060301;
//+
MeshSize {12} = 0.060301;
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
Save "../geo_unrolled/cad_286.geo_unrolled";
