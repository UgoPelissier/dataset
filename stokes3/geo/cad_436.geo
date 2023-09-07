//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.054547, -4.270397, 0.000000, 31.367850, 9.574734, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {14.193436, 2.131784, 0.000000, 0.000000, 0.000000, 1.000000, 0.613172, 2*Pi};
//+
c0 = 0.061317158624359505;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {4.251660, -0.827647, 0.000000, 0.000000, 0.000000, 1.000000, 0.950886, 2*Pi};
//+
c1 = 0.09508858548470744;
//+
MeshSize {11, 12} = c1;
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
