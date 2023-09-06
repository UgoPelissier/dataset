//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.682942, -3.950233, 0.000000, 38.861588, 9.425918, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {20.033678, 1.211897, 0.000000, 0.000000, 0.000000, 1.000000, 1.001049, 2*Pi};
//+
c0 = 0.10010490000000001;
//+
Cylinder(3) = {16.428063, 1.902250, 0.000000, 0.000000, 0.000000, 1.000000, 0.582428, 2*Pi};
//+
c1 = 0.0582428;
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
Save "cad_281.msh";