//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.472452, -3.105916, 0.000000, 39.131658, 7.695204, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {25.096636, 2.293927, 0.000000, 0.000000, 0.000000, 1.000000, 0.812500, 2*Pi};
//+
c0 = 0.08125;
//+
Cylinder(3) = {18.569132, 0.097445, 0.000000, 0.000000, 0.000000, 1.000000, 0.969232, 2*Pi};
//+
c1 = 0.0969232;
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
Save "cad_469.msh";
