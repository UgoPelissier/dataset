//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.423576, -4.437219, 0.000000, 29.611881, 9.427798, 0.000000};
//+
l = [3.0403116858264085, 0.9876660731591201, 1.1840853214729337, 3.0403116858264085];
//+
MeshSize {1} = 3.040312;
//+
MeshSize {2} = 0.987666;
//+
MeshSize {3} = 1.184085;
//+
MeshSize {4} = 3.040312;
//+
Disk(2) = {19.135991, -2.244238, 0.000000, 1.241231, 1.241231};
//+
c0 = 0.1241230908347931;
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
