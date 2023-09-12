//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.653534, -4.073803, 0.000000, 31.131202, 8.843146, 1.000000};
//+
MeshSize {1} = 3.209081;
//+
MeshSize {2} = 3.209081;
//+
MeshSize {3} = 1.026629;
//+
MeshSize {4} = 1.026629;
//+
MeshSize {5} = 3.209081;
//+
MeshSize {6} = 3.209081;
//+
MeshSize {7} = 1.544340;
//+
MeshSize {8} = 1.544340;
//+
Cylinder(2) = {16.809121, 2.014983, 0.000000, 0.000000, 0.000000, 1.000000, 0.722690, 2*Pi};
//+
MeshSize {9} = 0.072269;
//+
MeshSize {10} = 0.072269;
//+
Cylinder(3) = {21.407015, 0.393037, 0.000000, 0.000000, 0.000000, 1.000000, 1.031934, 2*Pi};
//+
MeshSize {11} = 0.103193;
//+
MeshSize {12} = 0.103193;
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
Save "../geo_unrolled/cad_127.geo_unrolled";
