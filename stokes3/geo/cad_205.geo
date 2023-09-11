//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.538578, -2.988567, 0.000000, 36.423135, 7.843182, 1.000000};
//+
l = [3.716916875397496, 3.716916875397496, 1.3929100538275787, 1.3929100538275787, 1.3929100538275787, 1.4063201016111238, 1.4063201016111238, 1.4063201016111238, 3.716916875397496, 3.716916875397496];
//+
MeshSize {1} = 3.716917;
//+
MeshSize {2} = 3.716917;
//+
MeshSize {3} = 1.392910;
//+
MeshSize {4} = 1.392910;
//+
MeshSize {5} = 1.392910;
//+
MeshSize {6} = 1.406320;
//+
MeshSize {7} = 1.406320;
//+
MeshSize {8} = 1.406320;
//+
Cylinder(2) = {22.756478, 0.681027, 0.000000, 0.000000, 0.000000, 1.000000, 0.742458, 2*Pi};
//+
c0 = 0.07424580384102868;
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
