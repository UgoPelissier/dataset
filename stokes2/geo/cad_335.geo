//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.094998, -4.056794, 0.000000, 30.363892, 9.629997, 0.000000};
//+
l = [1.2854474995718004, 0.6916699043303399, 3.0837124423988733, 3.0837124423988733, 3.0837124423988733, 3.0837124423988733, 1.2571000681947657, 0.3050608871882848];
//+
MeshSize {1} = 1.285447;
//+
MeshSize {2} = 0.691670;
//+
MeshSize {3} = 3.083712;
//+
MeshSize {4} = 3.083712;
//+
Disk(2) = {13.332299, 1.173001, 0.000000, 1.378476, 1.378476};
//+
c0 = 0.13784755373974736;
//+
MeshSize {5} = c0;
//+
Disk(3) = {2.831194, 3.033105, 0.000000, 0.682869, 0.682869};
//+
c1 = 0.06828694203036427;
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
