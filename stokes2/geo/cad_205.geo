//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.538578, -2.988567, 0.000000, 36.423135, 7.843182, 0.000000};
//+
l = [3.716916875397496, 1.3929100538275787, 1.4063201016111238, 3.716916875397496];
//+
MeshSize {1} = 3.716917;
//+
MeshSize {2} = 1.392910;
//+
MeshSize {3} = 1.406320;
//+
MeshSize {4} = 3.716917;
//+
Disk(2) = {22.756478, 0.681027, 0.000000, 0.742458, 0.742458};
//+
c0 = 0.07424580384102868;
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
