//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.029192, -3.876147, 0.000000, 31.944052, 8.980508, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {12.432341, 1.838630, 0.000000, 0.000000, 0.000000, 1.000000, 0.705784, 2*Pi};
//+
c0 = 0.0705784479367322;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {24.054287, 2.772550, 0.000000, 0.000000, 0.000000, 1.000000, 0.562564, 2*Pi};
//+
c1 = 0.05625637514691644;
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
