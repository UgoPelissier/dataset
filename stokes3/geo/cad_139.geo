//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.655509, -4.190500, 0.000000, 37.072972, 8.735293, 1.000000};
//+
MeshSize {1} = 3.798045;
//+
MeshSize {2} = 3.798045;
//+
MeshSize {3} = 3.798045;
//+
MeshSize {4} = 3.798045;
//+
MeshSize {5} = 1.034571;
//+
MeshSize {6} = 1.034571;
//+
MeshSize {7} = 0.859065;
//+
MeshSize {8} = 0.859065;
//+
Cylinder(2) = {28.464095, 2.270103, 0.000000, 0.000000, 0.000000, 1.000000, 0.948905, 2*Pi};
//+
MeshSize {9} = 0.094891;
//+
MeshSize {10} = 0.094891;
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
