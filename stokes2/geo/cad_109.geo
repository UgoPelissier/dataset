//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.221367, -4.823518, 0.000000, 38.017186, 9.773469, 0.000000};
//+
l = [1.1355291475826381, 3.854954149375443, 3.854954149375443, 1.2113130710651712];
//+
MeshSize {1} = 1.135529;
//+
MeshSize {2} = 3.854954;
//+
MeshSize {3} = 3.854954;
//+
MeshSize {4} = 1.211313;
//+
Disk(2) = {11.555315, -0.896268, 0.000000, 0.639777, 0.639777};
//+
c0 = 0.06397770125072211;
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
