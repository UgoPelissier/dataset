//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.166963, -3.959025, 0.000000, 37.644277, 8.171911, 0.000000};
//+
l = [3.8031367164435377, 3.8031367164435377, 0.6994088568807417, 0.6994088568807417, 0.420609003327977, 0.420609003327977, 3.8031367164435377, 3.8031367164435377];
//+
MeshSize {1} = 3.803137;
//+
MeshSize {2} = 3.803137;
//+
MeshSize {3} = 0.699409;
//+
MeshSize {4} = 0.699409;
//+
Disk(2) = {33.516441, 2.218104, 0.000000, 0.529356, 0.529356};
//+
c0 = 0.05293562511728035;
//+
MeshSize {5} = c0;
//+
Disk(3) = {30.517748, -1.863354, 0.000000, 0.563872, 0.563872};
//+
c1 = 0.056387198912314807;
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
