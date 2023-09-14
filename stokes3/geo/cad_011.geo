//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.760602, -3.578269, 0.000000, 30.523312, 8.688206, 1.000000};
//+
MeshSize {1} = 1.000479;
//+
MeshSize {2} = 1.000479;
//+
MeshSize {3} = 1.000364;
//+
MeshSize {4} = 1.000364;
//+
MeshSize {5} = 1.254444;
//+
MeshSize {6} = 1.254444;
//+
MeshSize {7} = 1.316101;
//+
MeshSize {8} = 1.316101;
//+
Cylinder(2) = {10.576640, 0.767244, 0.000000, 0.000000, 0.000000, 1.000000, 0.730115, 2*Pi};
//+
MeshSize {9} = 0.073011;
//+
MeshSize {10} = 0.073011;
//+
Cylinder(3) = {17.864463, -0.237440, 0.000000, 0.000000, 0.000000, 1.000000, 1.284619, 2*Pi};
//+
MeshSize {11} = 0.128462;
//+
MeshSize {12} = 0.128462;
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
Save "../geo_unrolled/cad_011.geo_unrolled";
