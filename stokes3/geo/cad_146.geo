//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.597886, -3.043163, 0.000000, 35.875168, 7.664780, 1.000000};
//+
l = [0.44664375200635453, 0.44664375200635453, 0.44664375200635453, 3.6673844200106127, 3.6673844200106127, 3.6673844200106127, 3.6673844200106127, 0.3541124916610288, 0.3541124916610288, 0.3541124916610288];
//+
MeshSize {1} = 0.446644;
//+
MeshSize {2} = 0.446644;
//+
MeshSize {3} = 0.446644;
//+
MeshSize {4} = 3.667384;
//+
MeshSize {5} = 3.667384;
//+
MeshSize {6} = 3.667384;
//+
MeshSize {7} = 3.667384;
//+
MeshSize {8} = 0.354112;
//+
Cylinder(2) = {3.446920, 1.367238, 0.000000, 0.000000, 0.000000, 1.000000, 0.784147, 2*Pi};
//+
c0 = 0.07841469738781137;
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
