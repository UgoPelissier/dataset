//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.925676, -4.768509, 0.000000, 30.074003, 9.618417, 0.000000};
//+
l = 1.0;
//+
MeshSize {1, 2, 3, 4} = l;
//+
Disk(2) = {18.985490, 2.670665, 0.000000, 0.515630, 0.515630};
//+
c0 = 0.05156303262682776;
//+
MeshSize {5} = c0;
//+
Disk(3) = {12.902756, 2.956815, 0.000000, 1.272563, 1.272563};
//+
c1 = 0.12725627085269428;
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
