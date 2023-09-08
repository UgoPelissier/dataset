//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.361901, -3.262967, 0.000000, 35.035327, 8.048190, 0.000000};
//+
l = [3.5625231377198228, 0.7423598566629043, 0.8537562364165852, 0.8537562364165852, 0.8075775785285183, 0.8075775785285183, 3.5625231377198228, 0.5738507675122223];
//+
MeshSize {1} = 3.562523;
//+
MeshSize {2} = 0.742360;
//+
MeshSize {3} = 0.853756;
//+
MeshSize {4} = 0.853756;
//+
Disk(2) = {27.267592, 1.282295, 0.000000, 0.776427, 0.776427};
//+
c0 = 0.07764265839239137;
//+
MeshSize {5} = c0;
//+
Disk(3) = {6.857115, 2.387198, 0.000000, 1.185244, 1.185244};
//+
c1 = 0.11852437544150776;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
