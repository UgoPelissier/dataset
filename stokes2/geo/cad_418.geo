//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.416522, -3.165566, 0.000000, 38.281343, 8.066794, 0.000000};
//+
l = [3.890749360427417, 3.890749360427417, 1.3505398564254676, 0.8089534082374059, 1.3529885092564806, 0.9606940979687959, 3.890749360427417, 3.890749360427417];
//+
MeshSize {1} = 3.890749;
//+
MeshSize {2} = 3.890749;
//+
MeshSize {3} = 1.350540;
//+
MeshSize {4} = 0.808953;
//+
Disk(2) = {25.261161, 0.825246, 0.000000, 0.511434, 0.511434};
//+
c0 = 0.05114343809626035;
//+
MeshSize {5} = c0;
//+
Disk(3) = {30.084441, -0.947953, 0.000000, 0.804783, 0.804783};
//+
c1 = 0.08047833928792429;
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
