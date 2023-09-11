//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.920521, -2.955034, 0.000000, 36.437852, 7.655703, 1.000000};
//+
l = [3.7553967296002178, 3.7553967296002178, 1.2192150195952103, 1.2192150195952103, 1.2192150195952103, 1.2585170981582414, 1.2585170981582414, 1.2585170981582414, 3.7553967296002178, 3.7553967296002178];
//+
MeshSize {1} = 3.755397;
//+
MeshSize {2} = 3.755397;
//+
MeshSize {3} = 1.219215;
//+
MeshSize {4} = 1.219215;
//+
MeshSize {5} = 1.219215;
//+
MeshSize {6} = 1.258517;
//+
MeshSize {7} = 1.258517;
//+
MeshSize {8} = 1.258517;
//+
Cylinder(2) = {24.739716, 0.195046, 0.000000, 0.000000, 0.000000, 1.000000, 0.813753, 2*Pi};
//+
c0 = 0.08137525987378172;
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
