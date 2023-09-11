//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.383043, -3.311247, 0.000000, 35.706578, 7.593664, 1.000000};
//+
MeshSize {1} = 3.628880;
//+
MeshSize {2} = 3.628880;
//+
MeshSize {3} = 0.605567;
//+
MeshSize {4} = 0.605567;
//+
MeshSize {5} = 3.628880;
//+
MeshSize {6} = 3.628880;
//+
MeshSize {7} = 0.642117;
//+
MeshSize {8} = 0.642117;
//+
Cylinder(2) = {33.232586, 3.014923, 0.000000, 0.000000, 0.000000, 1.000000, 0.520233, 2*Pi};
//+
MeshSize {9} = 0.052023;
//+
MeshSize {10} = 0.052023;
//+
Cylinder(3) = {29.499149, -1.495535, 0.000000, 0.000000, 0.000000, 1.000000, 0.780347, 2*Pi};
//+
MeshSize {11} = 0.078035;
//+
MeshSize {12} = 0.078035;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
