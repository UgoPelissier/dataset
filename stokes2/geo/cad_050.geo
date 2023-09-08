//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.285728, -4.153475, 0.000000, 32.911368, 8.850381, 0.000000};
//+
l = [0.3465305743477154, 3.3490737090469134, 3.3490737090469134, 0.7089672130052249];
//+
MeshSize {1} = 0.346531;
//+
MeshSize {2} = 3.349074;
//+
MeshSize {3} = 3.349074;
//+
MeshSize {4} = 0.708967;
//+
Disk(2) = {4.593617, -2.378438, 0.000000, 1.193950, 1.193950};
//+
c0 = 0.11939498122990524;
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
