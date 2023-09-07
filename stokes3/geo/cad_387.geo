//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.663424, -3.813015, 0.000000, 36.979018, 8.853685, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {32.702581, -0.081407, 0.000000, 0.000000, 0.000000, 1.000000, 1.484395, 2*Pi};
//+
c0 = 0.14843946826775545;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {18.005136, 0.360947, 0.000000, 0.000000, 0.000000, 1.000000, 1.002475, 2*Pi};
//+
c1 = 0.10024752121216728;
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
