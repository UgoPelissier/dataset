//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.968574, -4.113265, 0.000000, 30.794664, 9.175356, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {13.806579, -1.520406, 0.000000, 0.000000, 0.000000, 1.000000, 1.305154, 2*Pi};
//+
c0 = 0.1305154;
//+
Cylinder(3) = {22.914098, 0.850617, 0.000000, 0.000000, 0.000000, 1.000000, 0.825972, 2*Pi};
//+
c1 = 0.08259720000000001;
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
Save "cad_491.msh";