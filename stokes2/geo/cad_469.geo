//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.472452, -3.105916, 0.000000, 39.131659, 7.695205, 0.000000};
//+
l = [3.9790571877005925, 1.7408780920141245, 1.466732959919937, 1.466732959919937, 1.3875437252619536, 1.3875437252619536, 3.9790571877005925, 1.767658495035089];
//+
MeshSize {1} = 3.979057;
//+
MeshSize {2} = 1.740878;
//+
MeshSize {3} = 1.466733;
//+
MeshSize {4} = 1.466733;
//+
Disk(2) = {25.096636, 2.293927, 0.000000, 0.812500, 0.812500};
//+
c0 = 0.08124997214454346;
//+
MeshSize {5} = c0;
//+
Disk(3) = {18.569132, 0.097445, 0.000000, 0.969232, 0.969232};
//+
c1 = 0.09692323921171225;
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
