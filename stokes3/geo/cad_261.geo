//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.487642, -3.740649, 0.000000, 33.206710, 7.607021, 1.000000};
//+
MeshSize {1} = 1.516267;
//+
MeshSize {2} = 1.516267;
//+
MeshSize {3} = 3.390835;
//+
MeshSize {4} = 3.390835;
//+
MeshSize {5} = 0.864989;
//+
MeshSize {6} = 0.864989;
//+
MeshSize {7} = 3.390835;
//+
MeshSize {8} = 3.390835;
//+
Cylinder(2) = {15.825369, -0.345028, 0.000000, 0.000000, 0.000000, 1.000000, 0.546437, 2*Pi};
//+
MeshSize {9} = 0.054644;
//+
MeshSize {10} = 0.054644;
//+
Cylinder(3) = {8.872264, 0.337372, 0.000000, 0.000000, 0.000000, 1.000000, 0.673850, 2*Pi};
//+
MeshSize {11} = 0.067385;
//+
MeshSize {12} = 0.067385;
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
Save "../geo_unrolled/cad_261.geo_unrolled";
