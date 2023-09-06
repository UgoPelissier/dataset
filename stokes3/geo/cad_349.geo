//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.145327, -4.017477, 0.000000, 31.853697, 9.375462, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {5.149776, -2.000578, 0.000000, 0.000000, 0.000000, 1.000000, 0.750561, 2*Pi};
//+
c0 = 0.07505610000000001;
//+
Cylinder(3) = {26.859399, 1.786915, 0.000000, 0.000000, 0.000000, 1.000000, 0.795141, 2*Pi};
//+
c1 = 0.0795141;
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
Save "cad_349.msh";
