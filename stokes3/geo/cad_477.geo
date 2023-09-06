//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.547613, -3.092150, 0.000000, 37.769282, 7.529904, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {8.407352, -1.631753, 0.000000, 0.000000, 0.000000, 1.000000, 0.693080, 2*Pi};
//+
c0 = 0.06930800000000001;
//+
Cylinder(3) = {24.449355, 1.566785, 0.000000, 0.000000, 0.000000, 1.000000, 0.619977, 2*Pi};
//+
c1 = 0.0619977;
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
Save "cad_477.msh";
