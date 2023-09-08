//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.784619, -3.063667, 0.000000, 31.119480, 7.742327, 0.000000};
//+
l = [1.2234166624111715, 3.2138099650528407, 3.2138099650528407, 1.3030732737359845];
//+
MeshSize {1} = 1.223417;
//+
MeshSize {2} = 3.213810;
//+
MeshSize {3} = 3.213810;
//+
MeshSize {4} = 1.303073;
//+
Disk(2) = {13.752300, -0.591679, 0.000000, 0.967025, 0.967025};
//+
c0 = 0.09670246680366751;
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
