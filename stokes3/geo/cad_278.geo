//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.269076, -3.940291, 0.000000, 36.561997, 9.774819, 1.000000};
//+
MeshSize {1} = 0.766510;
//+
MeshSize {2} = 0.766510;
//+
MeshSize {3} = 0.287166;
//+
MeshSize {4} = 0.287166;
//+
MeshSize {5} = 3.715393;
//+
MeshSize {6} = 3.715393;
//+
MeshSize {7} = 3.715393;
//+
MeshSize {8} = 3.715393;
//+
Cylinder(2) = {9.196551, 1.159263, 0.000000, 0.000000, 0.000000, 1.000000, 0.655996, 2*Pi};
//+
MeshSize {9} = 0.065600;
//+
MeshSize {10} = 0.065600;
//+
Cylinder(3) = {3.929481, 4.107263, 0.000000, 0.000000, 0.000000, 1.000000, 1.175812, 2*Pi};
//+
MeshSize {11} = 0.117581;
//+
MeshSize {12} = 0.117581;
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
Save "../geo_unrolled/cad_278.geo_unrolled";
