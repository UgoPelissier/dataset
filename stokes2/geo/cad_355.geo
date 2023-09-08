//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.537036, -3.924747, 0.000000, 31.674945, 8.033385, 0.000000};
//+
l = [0.9815866308397789, 0.9815866308397789, 3.246144674075179, 0.749598411205306, 3.246144674075179, 0.7358191743473294, 1.0701532289941604, 1.0701532289941604];
//+
MeshSize {1} = 0.981587;
//+
MeshSize {2} = 0.981587;
//+
MeshSize {3} = 3.246145;
//+
MeshSize {4} = 0.749598;
//+
Disk(2) = {10.690625, -1.118265, 0.000000, 0.718445, 0.718445};
//+
c0 = 0.07184452857845147;
//+
MeshSize {5} = c0;
//+
Disk(3) = {24.244531, 0.245009, 0.000000, 1.496631, 1.496631};
//+
c1 = 0.14966310826043389;
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
