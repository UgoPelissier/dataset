//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.134291, -4.326101, 0.000000, 30.936069, 8.883059, 0.000000};
//+
l = [0.8630703967420628, 3.138621419399638, 3.138621419399638, 0.786512261902545];
//+
MeshSize {1} = 0.863070;
//+
MeshSize {2} = 3.138621;
//+
MeshSize {3} = 3.138621;
//+
MeshSize {4} = 0.786512;
//+
Disk(2) = {8.461957, 0.931210, 0.000000, 1.217612, 1.217612};
//+
c0 = 0.12176121871387979;
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
