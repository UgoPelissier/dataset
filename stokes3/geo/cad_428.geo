//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.970537, -3.518057, 0.000000, 32.322310, 8.855584, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {26.637776, 3.210926, 0.000000, 0.000000, 0.000000, 1.000000, 0.808998, 2*Pi};
//+
c0 = 0.08089980000000001;
//+
Cylinder(3) = {23.475998, 0.210811, 0.000000, 0.000000, 0.000000, 1.000000, 0.635252, 2*Pi};
//+
c1 = 0.0635252;
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
Save "cad_428.msh";
