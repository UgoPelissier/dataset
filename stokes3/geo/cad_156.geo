//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.554541, -4.711368, 0.000000, 37.904382, 9.627915, 1.000000};
//+
l = [1.190889850993673, 1.190889850993673, 1.190889850993673, 3.875903672454067, 3.875903672454067, 3.875903672454067, 3.875903672454067, 0.9905249580544437, 0.9905249580544437, 0.9905249580544437];
//+
MeshSize {1} = 1.190890;
//+
MeshSize {2} = 1.190890;
//+
MeshSize {3} = 1.190890;
//+
MeshSize {4} = 3.875904;
//+
MeshSize {5} = 3.875904;
//+
MeshSize {6} = 3.875904;
//+
MeshSize {7} = 3.875904;
//+
MeshSize {8} = 0.990525;
//+
Cylinder(2) = {10.963216, 2.533267, 0.000000, 0.000000, 0.000000, 1.000000, 0.772791, 2*Pi};
//+
c0 = 0.07727912995913566;
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
