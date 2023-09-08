//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.987189, -4.433702, 0.000000, 35.899354, 9.834729, 0.000000};
//+
l = [1.017313445151474, 1.017313445151474, 3.7212867572839246, 1.7627619839941222, 3.7212867572839246, 1.7193077237642929, 1.0368682647218006, 1.0368682647218006];
//+
MeshSize {1} = 1.017313;
//+
MeshSize {2} = 1.017313;
//+
MeshSize {3} = 3.721287;
//+
MeshSize {4} = 1.762762;
//+
Disk(2) = {11.674169, 0.249716, 0.000000, 1.495024, 1.495024};
//+
c0 = 0.14950243355575513;
//+
MeshSize {5} = c0;
//+
Disk(3) = {19.170150, 1.296784, 0.000000, 0.992504, 0.992504};
//+
c1 = 0.0992504453718516;
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
