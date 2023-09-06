//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.261613, -4.283173, 0.000000, 36.784069, 9.194822, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {28.433625, 0.704774, 0.000000, 0.000000, 0.000000, 1.000000, 1.065012, 2*Pi};
//+
c0 = 0.10650120000000002;
//+
Cylinder(3) = {19.378714, 1.844299, 0.000000, 0.000000, 0.000000, 1.000000, 0.595242, 2*Pi};
//+
c1 = 0.059524200000000006;
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
Save "cad_338.msh";
