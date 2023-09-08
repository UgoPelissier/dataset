//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.261613, -4.283173, 0.000000, 36.784069, 9.194822, 0.000000};
//+
l = [3.732986373820787, 3.732986373820787, 0.8887231003578097, 0.8887231003578097, 0.8519627875175223, 0.8519627875175223, 3.732986373820787, 3.732986373820787];
//+
MeshSize {1} = 3.732986;
//+
MeshSize {2} = 3.732986;
//+
MeshSize {3} = 0.888723;
//+
MeshSize {4} = 0.888723;
//+
Disk(2) = {28.433625, 0.704774, 0.000000, 1.065012, 1.065012};
//+
c0 = 0.10650122256873913;
//+
MeshSize {5} = c0;
//+
Disk(3) = {19.378714, 1.844299, 0.000000, 0.595242, 0.595242};
//+
c1 = 0.059524213845169476;
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
