//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.006106, -3.381118, 0.000000, 35.657105, 8.501961, 0.000000};
//+
l = [0.6244969728359597, 3.5915671366553017, 3.5915671366553017, 0.5907351983211152];
//+
MeshSize {1} = 0.624497;
//+
MeshSize {2} = 3.591567;
//+
MeshSize {3} = 3.591567;
//+
MeshSize {4} = 0.590735;
//+
Disk(2) = {5.059706, 1.132223, 0.000000, 0.530657, 0.530657};
//+
c0 = 0.05306570983809059;
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
