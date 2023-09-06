//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.284175, -4.171666, 0.000000, 31.028596, 9.596294, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {10.182954, -0.228826, 0.000000, 0.000000, 0.000000, 1.000000, 1.474982, 2*Pi};
//+
c0 = 0.1474982;
//+
Cylinder(3) = {16.927188, -2.183978, 0.000000, 0.000000, 0.000000, 1.000000, 0.944845, 2*Pi};
//+
c1 = 0.09448450000000001;
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
Save "cad_396.msh";
