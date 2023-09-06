//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.370377, -3.993420, 0.000000, 34.927788, 8.073716, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {28.319725, 2.337789, 0.000000, 0.000000, 0.000000, 1.000000, 0.881236, 2*Pi};
//+
c0 = 0.08812360000000001;
//+
Cylinder(3) = {20.792317, 1.948947, 0.000000, 0.000000, 0.000000, 1.000000, 1.261539, 2*Pi};
//+
c1 = 0.1261539;
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
Save "cad_376.msh";
