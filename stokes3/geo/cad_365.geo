//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.862014, -3.588490, 0.000000, 29.982000, 7.862676, 1.000000};
//+
MeshSize {1} = 1.283475;
//+
MeshSize {2} = 1.283475;
//+
MeshSize {3} = 1.239886;
//+
MeshSize {4} = 1.239886;
//+
MeshSize {5} = 0.738710;
//+
MeshSize {6} = 0.738710;
//+
MeshSize {7} = 0.872165;
//+
MeshSize {8} = 0.872165;
//+
Cylinder(2) = {13.577073, 1.081705, 0.000000, 0.000000, 0.000000, 1.000000, 0.710857, 2*Pi};
//+
MeshSize {9} = 0.071086;
//+
MeshSize {10} = 0.071086;
//+
Cylinder(3) = {22.650645, -1.218119, 0.000000, 0.000000, 0.000000, 1.000000, 1.142261, 2*Pi};
//+
MeshSize {11} = 0.114226;
//+
MeshSize {12} = 0.114226;
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
Save "../geo_unrolled/cad_365.geo_unrolled";
