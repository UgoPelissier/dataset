//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.435574, -4.083615, 0.000000, 32.248381, 9.629283, 0.000000};
//+
l = [0.7303337836714211, 3.30366722235503, 3.30366722235503, 0.845068453831096];
//+
MeshSize {1} = 0.730334;
//+
MeshSize {2} = 3.303667;
//+
MeshSize {3} = 3.303667;
//+
MeshSize {4} = 0.845068;
//+
Disk(2) = {7.970422, -0.339832, 0.000000, 1.110332, 1.110332};
//+
c0 = 0.11103317042305205;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
