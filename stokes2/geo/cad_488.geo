//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.925676, -4.768509, 0.000000, 30.074003, 9.618417, 0.000000};
//+
l = [3.1370504504089904, 1.2979843594664797, 1.3615259717595594, 1.3615259717595594, 1.1694604168293465, 1.1694604168293465, 3.1370504504089904, 1.0853205236864365];
//+
MeshSize {1} = 3.137050;
//+
MeshSize {2} = 1.297984;
//+
MeshSize {3} = 1.361526;
//+
MeshSize {4} = 1.361526;
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
