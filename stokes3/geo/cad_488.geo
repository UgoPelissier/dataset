//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.925676, -4.768509, 0.000000, 30.074003, 9.618416, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {18.985490, 2.670665, 0.000000, 0.000000, 0.000000, 1.000000, 0.515630, 2*Pi};
//+
c0 = 0.051563000000000005;
//+
Cylinder(3) = {12.902756, 2.956815, 0.000000, 0.000000, 0.000000, 1.000000, 1.272563, 2*Pi};
//+
c1 = 0.12725630000000002;
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
Save "cad_488.msh";
