//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.249530, -4.752375, 0.000000, 37.551633, 9.710337, 0.000000};
//+
l = [1.5577113829572813, 3.8111685087033873, 3.8111685087033873, 1.4924562118440585];
//+
MeshSize {1} = 1.557711;
//+
MeshSize {2} = 3.811169;
//+
MeshSize {3} = 3.811169;
//+
MeshSize {4} = 1.492456;
//+
Disk(2) = {15.361538, 1.171664, 0.000000, 0.654553, 0.654553};
//+
c0 = 0.06545533383322047;
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
