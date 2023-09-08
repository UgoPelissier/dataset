//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.864594, -3.391584, 0.000000, 36.188068, 8.286248, 0.000000};
//+
l = [0.7035315887207659, 0.7035315887207659, 3.7283578529929637, 0.8380033936954852, 3.7283578529929637, 0.6966270376008462, 0.8092450101649109, 0.8092450101649109];
//+
MeshSize {1} = 0.703532;
//+
MeshSize {2} = 0.703532;
//+
MeshSize {3} = 3.728358;
//+
MeshSize {4} = 0.838003;
//+
Disk(2) = {8.805278, -0.398516, 0.000000, 1.450727, 1.450727};
//+
c0 = 0.1450726749767577;
//+
MeshSize {5} = c0;
//+
Disk(3) = {29.084264, 2.301840, 0.000000, 1.413354, 1.413354};
//+
c1 = 0.14133538461670586;
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
