//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.086939, -3.601376, 0.000000, 30.211033, 8.046595, 0.000000};
//+
l = [3.0563933673719763, 1.0603455490595124, 1.0646220145760072, 3.0563933673719763];
//+
MeshSize {1} = 3.056393;
//+
MeshSize {2} = 1.060346;
//+
MeshSize {3} = 1.064622;
//+
MeshSize {4} = 3.056393;
//+
Disk(2) = {19.690181, 0.361626, 0.000000, 0.720441, 0.720441};
//+
c0 = 0.07204406220406967;
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
