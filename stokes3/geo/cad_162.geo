//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.664371, -3.748985, 0.000000, 39.082174, 7.669198, 1.000000};
//+
MeshSize {1} = 1.911085;
//+
MeshSize {2} = 1.911085;
//+
MeshSize {3} = 1.911085;
//+
MeshSize {4} = 1.772965;
//+
MeshSize {5} = 1.772965;
//+
MeshSize {6} = 1.772965;
//+
MeshSize {7} = 1.774139;
//+
MeshSize {8} = 1.774139;
//+
Cylinder(2) = {20.909045, 0.056198, 0.000000, 0.000000, 0.000000, 1.000000, 1.488331, 2*Pi};
//+
MeshSize {9} = 0.148833;
//+
MeshSize {10} = 0.148833;
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
