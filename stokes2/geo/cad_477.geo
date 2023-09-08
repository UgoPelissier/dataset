//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.547613, -3.092150, 0.000000, 37.769282, 7.529904, 0.000000};
//+
l = [0.7301185258362383, 0.7301185258362383, 3.8501419507472843, 1.4009252088201591, 3.8501419507472843, 1.3541630362367316, 0.9237399517578115, 0.9237399517578115];
//+
MeshSize {1} = 0.730119;
//+
MeshSize {2} = 0.730119;
//+
MeshSize {3} = 3.850142;
//+
MeshSize {4} = 1.400925;
//+
Disk(2) = {8.407352, -1.631753, 0.000000, 0.693080, 0.693080};
//+
c0 = 0.06930795314464104;
//+
MeshSize {5} = c0;
//+
Disk(3) = {24.449355, 1.566785, 0.000000, 0.619977, 0.619977};
//+
c1 = 0.06199771097778259;
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
