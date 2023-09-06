//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.536565, -3.521337, 0.000000, 32.238112, 8.274768, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {17.580015, -0.904171, 0.000000, 0.000000, 0.000000, 1.000000, 1.134294, 2*Pi};
//+
c0 = 0.1134294;
//+
Cylinder(3) = {27.351336, 1.498194, 0.000000, 0.000000, 0.000000, 1.000000, 0.566115, 2*Pi};
//+
c1 = 0.05661150000000001;
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
Save "cad_282.msh";
