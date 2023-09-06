//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.685493, -3.392459, 0.000000, 38.194802, 8.383988, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {37.698851, -1.840621, 0.000000, 0.000000, 0.000000, 1.000000, 0.531173, 2*Pi};
//+
c0 = 0.053117300000000006;
//+
Cylinder(3) = {22.199934, -0.925875, 0.000000, 0.000000, 0.000000, 1.000000, 1.095192, 2*Pi};
//+
c1 = 0.1095192;
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
Mesh 1;
//+
RefineMesh;
//+
RefineMesh;
//+
Mesh 3;
//+
Save "cad_449.msh";
