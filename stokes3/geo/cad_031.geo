//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.134291, -4.326101, 0.000000, 30.936069, 8.883059, 1.000000};
//+
l = [0.8630703967420628, 0.8630703967420628, 0.8630703967420628, 3.138621419399638, 3.138621419399638, 3.138621419399638, 3.138621419399638, 0.786512261902545, 0.786512261902545, 0.786512261902545];
//+
MeshSize {1} = 0.863070;
//+
MeshSize {2} = 0.863070;
//+
MeshSize {3} = 0.863070;
//+
MeshSize {4} = 3.138621;
//+
MeshSize {5} = 3.138621;
//+
MeshSize {6} = 3.138621;
//+
MeshSize {7} = 3.138621;
//+
MeshSize {8} = 0.786512;
//+
Cylinder(2) = {8.461957, 0.931210, 0.000000, 0.000000, 0.000000, 1.000000, 1.217612, 2*Pi};
//+
c0 = 0.12176121871387979;
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
