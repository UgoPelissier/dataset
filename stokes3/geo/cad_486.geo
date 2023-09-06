//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.591042, -3.553629, 0.000000, 30.472270, 8.742858, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {13.239540, 2.723584, 0.000000, 0.000000, 0.000000, 1.000000, 1.482193, 2*Pi};
//+
c0 = 0.14821930000000003;
//+
Cylinder(3) = {21.073284, -1.536689, 0.000000, 0.000000, 0.000000, 1.000000, 1.475853, 2*Pi};
//+
c1 = 0.1475853;
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
Save "cad_486.msh";
