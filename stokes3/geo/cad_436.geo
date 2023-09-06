//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.054547, -4.270397, 0.000000, 31.367849, 9.574734, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {14.193436, 2.131784, 0.000000, 0.000000, 0.000000, 1.000000, 0.613172, 2*Pi};
//+
c0 = 0.06131720000000001;
//+
Cylinder(3) = {4.251660, -0.827647, 0.000000, 0.000000, 0.000000, 1.000000, 0.950886, 2*Pi};
//+
c1 = 0.09508860000000001;
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
Mesh 1;
//+
RefineMesh;
//+
RefineMesh;
//+
Mesh 3;
//+
Save "cad_436.msh";
