//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.423576, -4.437219, 0.000000, 29.611881, 9.427798, 1.000000};
//+
l = [3.0403116858264085, 3.0403116858264085, 0.9876660731591201, 0.9876660731591201, 0.9876660731591201, 1.1840853214729337, 1.1840853214729337, 1.1840853214729337, 3.0403116858264085, 3.0403116858264085];
//+
MeshSize {1} = 3.040312;
//+
MeshSize {2} = 3.040312;
//+
MeshSize {3} = 0.987666;
//+
MeshSize {4} = 0.987666;
//+
MeshSize {5} = 0.987666;
//+
MeshSize {6} = 1.184085;
//+
MeshSize {7} = 1.184085;
//+
MeshSize {8} = 1.184085;
//+
Cylinder(2) = {19.135991, -2.244238, 0.000000, 0.000000, 0.000000, 1.000000, 1.241231, 2*Pi};
//+
c0 = 0.1241230908347931;
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
