//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.904838, -4.236836, 0.000000, 36.050391, 9.641830, 0.000000};
//+
l = [3.7268354353258584, 0.8689044118079737, 1.0359224374739247, 3.7268354353258584];
//+
MeshSize {1} = 3.726835;
//+
MeshSize {2} = 0.868904;
//+
MeshSize {3} = 1.035922;
//+
MeshSize {4} = 3.726835;
//+
Disk(2) = {28.292724, -1.153346, 0.000000, 0.505896, 0.505896};
//+
c0 = 0.05058960835839931;
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
