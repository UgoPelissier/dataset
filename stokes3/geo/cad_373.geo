//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.085749, -4.384925, 0.000000, 39.842009, 9.668256, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {6.810349, 3.194040, 0.000000, 0.000000, 0.000000, 1.000000, 1.100839, 2*Pi};
//+
c0 = 0.1100839;
//+
Cylinder(3) = {31.727238, 3.098223, 0.000000, 0.000000, 0.000000, 1.000000, 0.681884, 2*Pi};
//+
c1 = 0.06818840000000001;
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
Save "cad_373.msh";
