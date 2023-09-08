//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.825705, -4.194974, 0.000000, 34.936619, 9.769139, 0.000000};
//+
l = [3.609436080306103, 3.609436080306103, 1.3417735995566495, 0.7312317217920268, 1.5083381362339623, 0.9497984359176492, 3.609436080306103, 3.609436080306103];
//+
MeshSize {1} = 3.609436;
//+
MeshSize {2} = 3.609436;
//+
MeshSize {3} = 1.341774;
//+
MeshSize {4} = 0.731232;
//+
Disk(2) = {21.286851, -1.949986, 0.000000, 1.230789, 1.230789};
//+
c0 = 0.12307893619562771;
//+
MeshSize {5} = c0;
//+
Disk(3) = {27.569230, -1.485591, 0.000000, 1.317142, 1.317142};
//+
c1 = 0.1317141700046542;
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
