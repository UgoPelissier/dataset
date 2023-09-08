//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.720314, -3.939355, 0.000000, 38.448680, 8.855342, 0.000000};
//+
l = [3.9418451948240505, 0.841513261570497, 0.9501835214476068, 3.9418451948240505];
//+
MeshSize {1} = 3.941845;
//+
MeshSize {2} = 0.841513;
//+
MeshSize {3} = 0.950184;
//+
MeshSize {4} = 3.941845;
//+
Disk(2) = {29.938383, -0.775797, 0.000000, 1.342545, 1.342545};
//+
c0 = 0.13425447168253488;
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
