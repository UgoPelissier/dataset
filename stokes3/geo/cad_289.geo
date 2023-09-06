//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.772613, -4.505181, 0.000000, 38.231820, 9.401206, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {9.087945, -1.443802, 0.000000, 0.000000, 0.000000, 1.000000, 1.339574, 2*Pi};
//+
c0 = 0.1339574;
//+
Cylinder(3) = {4.054473, 0.280292, 0.000000, 0.000000, 0.000000, 1.000000, 0.738168, 2*Pi};
//+
c1 = 0.0738168;
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
Save "cad_289.msh";
