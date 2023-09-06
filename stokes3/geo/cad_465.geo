//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.861248, -3.762097, 0.000000, 31.491164, 9.255554, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {12.755531, -1.683333, 0.000000, 0.000000, 0.000000, 1.000000, 0.882790, 2*Pi};
//+
c0 = 0.088279;
//+
Cylinder(3) = {29.909224, 3.146543, 0.000000, 0.000000, 0.000000, 1.000000, 0.654267, 2*Pi};
//+
c1 = 0.0654267;
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
Save "cad_465.msh";
