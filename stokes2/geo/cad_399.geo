//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.922088, -2.814458, 0.000000, 33.848582, 7.522831, 0.000000};
//+
l = [1.3369329121690505, 1.3369329121690505, 3.4973529843042037, 1.474984791408734, 3.4973529843042037, 1.5576323531476002, 1.4647705822329462, 1.4647705822329462];
//+
MeshSize {1} = 1.336933;
//+
MeshSize {2} = 1.336933;
//+
MeshSize {3} = 3.497353;
//+
MeshSize {4} = 1.474985;
//+
Disk(2) = {14.966525, -1.557808, 0.000000, 0.731215, 0.731215};
//+
c0 = 0.07312153935191586;
//+
MeshSize {5} = c0;
//+
Disk(3) = {19.490851, -0.791762, 0.000000, 0.663269, 0.663269};
//+
c1 = 0.06632694953302888;
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
