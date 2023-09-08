//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.693313, -3.448072, 0.000000, 31.229328, 8.116298, 0.000000};
//+
l = [0.8269428261529959, 3.217955290564978, 3.217955290564978, 1.0168511078567355];
//+
MeshSize {1} = 0.826943;
//+
MeshSize {2} = 3.217955;
//+
MeshSize {3} = 3.217955;
//+
MeshSize {4} = 1.016851;
//+
Disk(2) = {9.500643, -1.712505, 0.000000, 0.707278, 0.707278};
//+
c0 = 0.07072777948546403;
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
