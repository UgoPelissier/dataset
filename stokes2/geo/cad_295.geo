//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.139793, -4.966252, 0.000000, 38.163930, 9.956418, 0.000000};
//+
l = [0.8653845155631377, 0.8653845155631377, 3.8625869380618214, 1.4460533375329798, 3.8625869380618214, 1.351675763047056, 0.4305861196190224, 0.4305861196190224];
//+
MeshSize {1} = 0.865385;
//+
MeshSize {2} = 0.865385;
//+
MeshSize {3} = 3.862587;
//+
MeshSize {4} = 1.446053;
//+
Disk(2) = {5.006880, 3.222628, 0.000000, 0.872240, 0.872240};
//+
c0 = 0.08722397438159978;
//+
MeshSize {5} = c0;
//+
Disk(3) = {24.142743, 1.440545, 0.000000, 1.082324, 1.082324};
//+
c1 = 0.10823238014140633;
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
