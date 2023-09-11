//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.680727, -3.855799, 0.000000, 38.801325, 7.774739, 1.000000};
//+
l = [3.9672963689719567, 3.9672963689719567, 1.1346438762795397, 1.1346438762795397, 1.1346438762795397, 1.1787404108386281, 1.1787404108386281, 1.1787404108386281, 3.9672963689719567, 3.9672963689719567];
//+
MeshSize {1} = 3.967296;
//+
MeshSize {2} = 3.967296;
//+
MeshSize {3} = 1.134644;
//+
MeshSize {4} = 1.134644;
//+
MeshSize {5} = 1.134644;
//+
MeshSize {6} = 1.178740;
//+
MeshSize {7} = 1.178740;
//+
MeshSize {8} = 1.178740;
//+
Cylinder(2) = {27.262367, -0.696792, 0.000000, 0.000000, 0.000000, 1.000000, 1.274972, 2*Pi};
//+
c0 = 0.1274972301807091;
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
