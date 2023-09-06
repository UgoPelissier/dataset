//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.911486, -3.989256, 0.000000, 35.564838, 9.387770, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {19.938511, 0.970573, 0.000000, 0.000000, 0.000000, 1.000000, 1.276147, 2*Pi};
//+
c0 = 0.1276147;
//+
Cylinder(3) = {35.173748, -1.932212, 0.000000, 0.000000, 0.000000, 1.000000, 0.677426, 2*Pi};
//+
c1 = 0.0677426;
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
Save "cad_352.msh";
