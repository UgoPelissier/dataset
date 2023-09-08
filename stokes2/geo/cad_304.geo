//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.688498, -4.808637, 0.000000, 36.599811, 9.871970, 0.000000};
//+
l = [3.761358769116514, 0.9668932373489897, 0.82698788241381, 0.82698788241381, 1.0711411213914734, 1.0711411213914734, 3.761358769116514, 0.5123587831102209];
//+
MeshSize {1} = 3.761359;
//+
MeshSize {2} = 0.966893;
//+
MeshSize {3} = 0.826988;
//+
MeshSize {4} = 0.826988;
//+
Disk(2) = {27.792593, -2.586496, 0.000000, 1.482380, 1.482380};
//+
c0 = 0.1482379654940357;
//+
MeshSize {5} = c0;
//+
Disk(3) = {6.260238, 3.803870, 0.000000, 0.588726, 0.588726};
//+
c1 = 0.05887260125701264;
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
