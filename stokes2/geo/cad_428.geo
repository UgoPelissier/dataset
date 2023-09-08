//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.970537, -3.518057, 0.000000, 32.322310, 8.855584, 0.000000};
//+
l = [3.3585994559990904, 3.3585994559990904, 0.8655101381800426, 0.8655101381800426, 0.6177589895883435, 0.6177589895883435, 3.3585994559990904, 3.3585994559990904];
//+
MeshSize {1} = 3.358599;
//+
MeshSize {2} = 3.358599;
//+
MeshSize {3} = 0.865510;
//+
MeshSize {4} = 0.865510;
//+
Disk(2) = {26.637776, 3.210926, 0.000000, 0.808998, 0.808998};
//+
c0 = 0.08089983961621827;
//+
MeshSize {5} = c0;
//+
Disk(3) = {23.475998, 0.210811, 0.000000, 0.635252, 0.635252};
//+
c1 = 0.06352524938439152;
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
