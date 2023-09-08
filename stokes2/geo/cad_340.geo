//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.235000, -3.851029, 0.000000, 37.777613, 8.620246, 0.000000};
//+
l = [3.8256187735224128, 1.8772207228660656, 0.5803305301468037, 0.5803305301468037, 0.6932706937531543, 0.6932706937531543, 3.8256187735224128, 1.8384351427830237];
//+
MeshSize {1} = 3.825619;
//+
MeshSize {2} = 1.877221;
//+
MeshSize {3} = 0.580331;
//+
MeshSize {4} = 0.580331;
//+
Disk(2) = {32.561195, -0.456286, 0.000000, 0.618707, 0.618707};
//+
c0 = 0.06187068520536329;
//+
MeshSize {5} = c0;
//+
Disk(3) = {18.906461, 1.322113, 0.000000, 0.602643, 0.602643};
//+
c1 = 0.06026433214801524;
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
