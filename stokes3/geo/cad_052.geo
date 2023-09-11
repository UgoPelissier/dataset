//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.904838, -4.236836, 0.000000, 36.050391, 9.641830, 1.000000};
//+
l = [3.7268354353258584, 3.7268354353258584, 0.8689044118079737, 0.8689044118079737, 0.8689044118079737, 1.0359224374739247, 1.0359224374739247, 1.0359224374739247, 3.7268354353258584, 3.7268354353258584];
//+
MeshSize {1} = 3.726835;
//+
MeshSize {2} = 3.726835;
//+
MeshSize {3} = 0.868904;
//+
MeshSize {4} = 0.868904;
//+
MeshSize {5} = 0.868904;
//+
MeshSize {6} = 1.035922;
//+
MeshSize {7} = 1.035922;
//+
MeshSize {8} = 1.035922;
//+
Cylinder(2) = {28.292724, -1.153346, 0.000000, 0.000000, 0.000000, 1.000000, 0.505896, 2*Pi};
//+
c0 = 0.05058960835839931;
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
