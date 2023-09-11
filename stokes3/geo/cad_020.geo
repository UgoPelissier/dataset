//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.784619, -3.063667, 0.000000, 31.119480, 7.742327, 1.000000};
//+
l = [1.2234166624111715, 1.2234166624111715, 1.2234166624111715, 3.2138099650528407, 3.2138099650528407, 3.2138099650528407, 3.2138099650528407, 1.3030732737359845, 1.3030732737359845, 1.3030732737359845];
//+
MeshSize {1} = 1.223417;
//+
MeshSize {2} = 1.223417;
//+
MeshSize {3} = 1.223417;
//+
MeshSize {4} = 3.213810;
//+
MeshSize {5} = 3.213810;
//+
MeshSize {6} = 3.213810;
//+
MeshSize {7} = 3.213810;
//+
MeshSize {8} = 1.303073;
//+
Cylinder(2) = {13.752300, -0.591679, 0.000000, 0.000000, 0.000000, 1.000000, 0.967025, 2*Pi};
//+
c0 = 0.09670246680366751;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
