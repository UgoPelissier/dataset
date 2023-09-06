//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.845518, -4.015122, 0.000000, 37.291865, 9.264970, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {11.343767, 1.060696, 0.000000, 0.000000, 0.000000, 1.000000, 0.584752, 2*Pi};
//+
c0 = 0.058475200000000005;
//+
Cylinder(3) = {6.980839, 1.792184, 0.000000, 0.000000, 0.000000, 1.000000, 1.010825, 2*Pi};
//+
c1 = 0.10108250000000002;
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
Save "cad_265.msh";
