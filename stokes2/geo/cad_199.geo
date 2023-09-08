//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.920521, -2.955034, 0.000000, 36.437852, 7.655703, 0.000000};
//+
l = [3.7553967296002178, 1.2192150195952103, 1.2585170981582414, 3.7553967296002178];
//+
MeshSize {1} = 3.755397;
//+
MeshSize {2} = 1.219215;
//+
MeshSize {3} = 1.258517;
//+
MeshSize {4} = 3.755397;
//+
Disk(2) = {24.739716, 0.195046, 0.000000, 0.813753, 0.813753};
//+
c0 = 0.08137525987378172;
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
