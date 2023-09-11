//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.166963, -3.959025, 0.000000, 37.644277, 8.171911, 1.000000};
//+
MeshSize {1} = 3.803137;
//+
MeshSize {2} = 3.803137;
//+
MeshSize {3} = 0.699409;
//+
MeshSize {4} = 0.699409;
//+
MeshSize {5} = 3.803137;
//+
MeshSize {6} = 3.803137;
//+
MeshSize {7} = 0.699409;
//+
MeshSize {8} = 0.699409;
//+
Cylinder(2) = {33.516441, 2.218104, 0.000000, 0.000000, 0.000000, 1.000000, 0.529356, 2*Pi};
//+
MeshSize {9} = 0.052936;
//+
MeshSize {10} = 0.052936;
//+
Cylinder(3) = {30.517748, -1.863354, 0.000000, 0.000000, 0.000000, 1.000000, 0.563872, 2*Pi};
//+
MeshSize {11} = 0.056387;
//+
MeshSize {12} = 0.056387;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
