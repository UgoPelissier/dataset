//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.198751, -4.046866, 0.000000, 33.058099, 9.447438, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {28.929678, -1.175900, 0.000000, 0.000000, 0.000000, 1.000000, 0.720663, 2*Pi};
//+
c0 = 0.07206630000000001;
//+
Cylinder(3) = {15.663652, -0.147307, 0.000000, 0.000000, 0.000000, 1.000000, 1.390489, 2*Pi};
//+
c1 = 0.1390489;
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
Save "cad_492.msh";
