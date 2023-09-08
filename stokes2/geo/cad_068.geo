//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.645903, -3.375495, 0.000000, 37.283426, 7.732633, 0.000000};
//+
l = [0.8348508543424492, 3.812587545157813, 3.812587545157813, 0.7468102740880987];
//+
MeshSize {1} = 0.834851;
//+
MeshSize {2} = 3.812588;
//+
MeshSize {3} = 3.812588;
//+
MeshSize {4} = 0.746810;
//+
Disk(2) = {8.405003, 1.483020, 0.000000, 0.806206, 0.806206};
//+
c0 = 0.08062060301300884;
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
