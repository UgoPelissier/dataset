//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.877960, -3.197191, 0.000000, 35.519979, 7.954908, 1.000000};
//+
l = [0.4208872890392192, 0.4208872890392192, 0.4208872890392192, 3.6614616268870748, 3.6614616268870748, 3.6614616268870748, 3.6614616268870748, 0.6804096507452407, 0.6804096507452407, 0.6804096507452407];
//+
MeshSize {1} = 0.420887;
//+
MeshSize {2} = 0.420887;
//+
MeshSize {3} = 0.420887;
//+
MeshSize {4} = 3.661462;
//+
MeshSize {5} = 3.661462;
//+
MeshSize {6} = 3.661462;
//+
MeshSize {7} = 3.661462;
//+
MeshSize {8} = 0.680410;
//+
Cylinder(2) = {5.993178, -1.410717, 0.000000, 0.000000, 0.000000, 1.000000, 1.209332, 2*Pi};
//+
c0 = 0.1209332132529246;
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
