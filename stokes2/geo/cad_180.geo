//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.877960, -3.197191, 0.000000, 35.519979, 7.954908, 0.000000};
//+
l = [0.4208872890392192, 3.6614616268870748, 3.6614616268870748, 0.6804096507452407];
//+
MeshSize {1} = 0.420887;
//+
MeshSize {2} = 3.661462;
//+
MeshSize {3} = 3.661462;
//+
MeshSize {4} = 0.680410;
//+
Disk(2) = {5.993178, -1.410717, 0.000000, 1.209332, 1.209332};
//+
c0 = 0.1209332132529246;
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
