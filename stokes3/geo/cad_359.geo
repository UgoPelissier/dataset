//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.630217, -4.158598, 0.000000, 29.538693, 9.183246, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {16.135370, 1.298720, 0.000000, 0.000000, 0.000000, 1.000000, 1.118349, 2*Pi};
//+
c0 = 0.11183490000000001;
//+
Cylinder(3) = {22.806507, 0.786160, 0.000000, 0.000000, 0.000000, 1.000000, 1.200882, 2*Pi};
//+
c1 = 0.1200882;
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
Save "cad_359.msh";
