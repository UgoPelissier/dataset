//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.968574, -4.113265, 0.000000, 30.794664, 9.175357, 0.000000};
//+
l = [1.1792071025448705, 1.1792071025448705, 3.2092835515235034, 0.932032799915392, 3.2092835515235034, 0.8974221622790547, 1.3122030414507064, 1.3122030414507064];
//+
MeshSize {1} = 1.179207;
//+
MeshSize {2} = 1.179207;
//+
MeshSize {3} = 3.209284;
//+
MeshSize {4} = 0.932033;
//+
Disk(2) = {13.806579, -1.520406, 0.000000, 1.305154, 1.305154};
//+
c0 = 0.1305153674558398;
//+
MeshSize {5} = c0;
//+
Disk(3) = {22.914098, 0.850617, 0.000000, 0.825972, 0.825972};
//+
c1 = 0.08259723143209985;
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
