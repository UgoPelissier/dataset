//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.720314, -3.939355, 0.000000, 38.448680, 8.855342, 1.000000};
//+
l = [3.9418451948240505, 3.9418451948240505, 0.841513261570497, 0.841513261570497, 0.841513261570497, 0.9501835214476068, 0.9501835214476068, 0.9501835214476068, 3.9418451948240505, 3.9418451948240505];
//+
MeshSize {1} = 3.941845;
//+
MeshSize {2} = 3.941845;
//+
MeshSize {3} = 0.841513;
//+
MeshSize {4} = 0.841513;
//+
MeshSize {5} = 0.841513;
//+
MeshSize {6} = 0.950184;
//+
MeshSize {7} = 0.950184;
//+
MeshSize {8} = 0.950184;
//+
Cylinder(2) = {29.938383, -0.775797, 0.000000, 0.000000, 0.000000, 1.000000, 1.342545, 2*Pi};
//+
c0 = 0.13425447168253488;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
