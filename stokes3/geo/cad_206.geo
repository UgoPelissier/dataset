//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.669834, -3.284572, 0.000000, 35.709612, 7.631228, 1.000000};
//+
l = [1.4591999548658652, 1.4591999548658652, 1.4591999548658652, 3.657899644916014, 3.657899644916014, 3.657899644916014, 3.657899644916014, 1.4014599099522593, 1.4014599099522593, 1.4014599099522593];
//+
MeshSize {1} = 1.459200;
//+
MeshSize {2} = 1.459200;
//+
MeshSize {3} = 1.459200;
//+
MeshSize {4} = 3.657900;
//+
MeshSize {5} = 3.657900;
//+
MeshSize {6} = 3.657900;
//+
MeshSize {7} = 3.657900;
//+
MeshSize {8} = 1.401460;
//+
Cylinder(2) = {15.035675, 1.658709, 0.000000, 0.000000, 0.000000, 1.000000, 0.600545, 2*Pi};
//+
c0 = 0.06005449047773479;
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
