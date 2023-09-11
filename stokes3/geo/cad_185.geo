//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.059913, -3.565423, 0.000000, 34.782598, 8.010058, 1.000000};
//+
l = [3.507193820121113, 3.507193820121113, 1.2641161320169934, 1.2641161320169934, 1.2641161320169934, 1.3720805048685947, 1.3720805048685947, 1.3720805048685947, 3.507193820121113, 3.507193820121113];
//+
MeshSize {1} = 3.507194;
//+
MeshSize {2} = 3.507194;
//+
MeshSize {3} = 1.264116;
//+
MeshSize {4} = 1.264116;
//+
MeshSize {5} = 1.264116;
//+
MeshSize {6} = 1.372081;
//+
MeshSize {7} = 1.372081;
//+
MeshSize {8} = 1.372081;
//+
Cylinder(2) = {21.137567, -1.501225, 0.000000, 0.000000, 0.000000, 1.000000, 1.218363, 2*Pi};
//+
c0 = 0.12183628851124376;
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
