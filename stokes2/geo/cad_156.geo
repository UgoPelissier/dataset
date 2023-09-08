//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.554541, -4.711368, 0.000000, 37.904382, 9.627915, 0.000000};
//+
l = [1.190889850993673, 3.875903672454067, 3.875903672454067, 0.9905249580544437];
//+
MeshSize {1} = 1.190890;
//+
MeshSize {2} = 3.875904;
//+
MeshSize {3} = 3.875904;
//+
MeshSize {4} = 0.990525;
//+
Disk(2) = {10.963216, 2.533267, 0.000000, 0.772791, 0.772791};
//+
c0 = 0.07727912995913566;
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
