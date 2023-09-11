//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.134291, -4.326101, 0.000000, 30.936069, 8.883059, 1.000000};
//+
MeshSize {1} = 0.863070;
//+
MeshSize {2} = 0.863070;
//+
MeshSize {3} = 0.786512;
//+
MeshSize {4} = 0.786512;
//+
MeshSize {5} = 3.138621;
//+
MeshSize {6} = 3.138621;
//+
MeshSize {7} = 3.138621;
//+
MeshSize {8} = 3.138621;
//+
Cylinder(2) = {8.461957, 0.931210, 0.000000, 0.000000, 0.000000, 1.000000, 1.217612, 2*Pi};
//+
MeshSize {9} = 0.121761;
//+
MeshSize {10} = 0.121761;
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
