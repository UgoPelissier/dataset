//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.669834, -3.284572, 0.000000, 35.709612, 7.631228, 0.000000};
//+
l = [1.4591999548658652, 3.657899644916014, 3.657899644916014, 1.4014599099522593];
//+
MeshSize {1} = 1.459200;
//+
MeshSize {2} = 3.657900;
//+
MeshSize {3} = 3.657900;
//+
MeshSize {4} = 1.401460;
//+
Disk(2) = {15.035675, 1.658709, 0.000000, 0.600545, 0.600545};
//+
c0 = 0.06005449047773479;
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
