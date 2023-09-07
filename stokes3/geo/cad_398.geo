//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.347168, -3.762657, 0.000000, 37.699909, 8.604651, 1.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4, 6, 5, 7, 8} = l;
//+
Cylinder(2) = {13.916986, -2.066777, 0.000000, 0.000000, 0.000000, 1.000000, 0.803573, 2*Pi};
//+
c0 = 0.0803572915573089;
//+
MeshSize {9, 10} = c0;
//+
Cylinder(3) = {13.083816, -0.265041, 0.000000, 0.000000, 0.000000, 1.000000, 0.508317, 2*Pi};
//+
c1 = 0.05083171105963733;
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
