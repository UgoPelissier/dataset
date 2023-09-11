//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.575967, -4.604048, 0.000000, 37.788304, 9.482754, 1.000000};
//+
MeshSize {1} = 3.865615;
//+
MeshSize {2} = 3.865615;
//+
MeshSize {3} = 0.974375;
//+
MeshSize {4} = 0.974375;
//+
MeshSize {5} = 3.865615;
//+
MeshSize {6} = 3.865615;
//+
MeshSize {7} = 0.974375;
//+
MeshSize {8} = 0.974375;
//+
Cylinder(2) = {29.319046, 0.882705, 0.000000, 0.000000, 0.000000, 1.000000, 0.835504, 2*Pi};
//+
MeshSize {9} = 0.083550;
//+
MeshSize {10} = 0.083550;
//+
Cylinder(3) = {26.712880, 0.506452, 0.000000, 0.000000, 0.000000, 1.000000, 0.938661, 2*Pi};
//+
MeshSize {11} = 0.093866;
//+
MeshSize {12} = 0.093866;
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
