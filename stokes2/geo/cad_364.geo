//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.098202, -3.437974, 0.000000, 34.773702, 8.327127, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {4.471106, 1.294643, 0.000000, 0.600045, 0.600045};
//+
c0 = 0.06000450572754229;
//+
MeshSize {5} = c0;
//+
Disk(3) = {21.603695, 3.331838, 0.000000, 0.817786, 0.817786};
//+
c1 = 0.08177859372337254;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
