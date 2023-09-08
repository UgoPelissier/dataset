//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.712323, -3.742346, 0.000000, 30.058377, 8.637994, 0.000000};
//+
l = [0.9955585886035507, 0.9955585886035507, 3.1072330693859787, 1.3554812779459173, 3.1072330693859787, 1.2715082032798222, 1.040112660413911, 1.040112660413911];
//+
MeshSize {1} = 0.995559;
//+
MeshSize {2} = 0.995559;
//+
MeshSize {3} = 3.107233;
//+
MeshSize {4} = 1.355481;
//+
Disk(2) = {11.081264, -0.003369, 0.000000, 1.066886, 1.066886};
//+
c0 = 0.106688612823845;
//+
MeshSize {5} = c0;
//+
Disk(3) = {17.659684, 1.924358, 0.000000, 0.728404, 0.728404};
//+
c1 = 0.0728404423153251;
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
