//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.098202, -3.437974, 0.000000, 34.773702, 8.327127, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {4.471106, 1.294643, 0.000000, 0.000000, 0.000000, 1.000000, 0.600045, 2*Pi};
//+
c0 = 0.06000450572754229;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {21.603695, 3.331838, 0.000000, 0.000000, 0.000000, 1.000000, 0.817786, 2*Pi};
//+
c1 = 0.08177859372337254;
//+
MeshSize {11, 12} = c1;
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
Mesh 2;
