//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.269076, -3.940291, 0.000000, 36.561997, 9.774818, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {9.196551, 1.159263, 0.000000, 0.000000, 0.000000, 1.000000, 0.655996, 2*Pi};
//+
c0 = 0.06559960000000001;
//+
Cylinder(3) = {3.929481, 4.107263, 0.000000, 0.000000, 0.000000, 1.000000, 1.175812, 2*Pi};
//+
c1 = 0.11758120000000001;
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
Save "cad_386.msh";
