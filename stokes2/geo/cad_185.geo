//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.059913, -3.565423, 0.000000, 34.782598, 8.010058, 0.000000};
//+
l = [3.507193820121113, 1.2641161320169934, 1.3720805048685947, 3.507193820121113];
//+
MeshSize {1} = 3.507194;
//+
MeshSize {2} = 1.264116;
//+
MeshSize {3} = 1.372081;
//+
MeshSize {4} = 3.507194;
//+
Disk(2) = {21.137567, -1.501225, 0.000000, 1.218363, 1.218363};
//+
c0 = 0.12183628851124376;
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
