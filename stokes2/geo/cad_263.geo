//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.029192, -3.876147, 0.000000, 31.944052, 8.980508, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {12.432341, 1.838630, 0.000000, 0.705784, 0.705784};
//+
c0 = 0.0705784479367322;
//+
MeshSize {5} = c0;
//+
Disk(3) = {24.054287, 2.772550, 0.000000, 0.562564, 0.562564};
//+
c1 = 0.05625637514691644;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
