//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.597886, -3.043163, 0.000000, 35.875168, 7.664780, 1.000000};
//+
MeshSize {1} = 0.446644;
//+
MeshSize {2} = 0.446644;
//+
MeshSize {3} = 0.354112;
//+
MeshSize {4} = 0.354112;
//+
MeshSize {5} = 3.667384;
//+
MeshSize {6} = 3.667384;
//+
MeshSize {7} = 3.667384;
//+
MeshSize {8} = 3.667384;
//+
Cylinder(2) = {3.446920, 1.367238, 0.000000, 0.000000, 0.000000, 1.000000, 0.784147, 2*Pi};
//+
MeshSize {9} = 0.078415;
//+
MeshSize {10} = 0.078415;
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
