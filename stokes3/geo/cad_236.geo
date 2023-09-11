//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.512817, -4.479371, 0.000000, 30.473266, 9.953296, 1.000000};
//+
MeshSize {1} = 1.467198;
//+
MeshSize {2} = 1.467198;
//+
MeshSize {3} = 1.277565;
//+
MeshSize {4} = 1.277565;
//+
MeshSize {5} = 3.138319;
//+
MeshSize {6} = 3.138319;
//+
MeshSize {7} = 1.515673;
//+
MeshSize {8} = 1.515673;
//+
Cylinder(2) = {14.547669, 3.381445, 0.000000, 0.000000, 0.000000, 1.000000, 1.414330, 2*Pi};
//+
MeshSize {9} = 0.141433;
//+
MeshSize {10} = 0.141433;
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
