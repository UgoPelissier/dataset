//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.512817, -4.479371, 0.000000, 30.473266, 9.953296, 1.000000};
//+
l = [1.4671983726339957, 1.4671983726339957, 1.4671983726339957, 3.138318535929237, 3.138318535929237, 1.5156725914681584, 1.5156725914681584, 1.5156725914681584, 1.2775650246744523, 1.2775650246744523, 1.2775650246744523];
//+
MeshSize {1} = 1.467198;
//+
MeshSize {2} = 1.467198;
//+
MeshSize {3} = 1.467198;
//+
MeshSize {4} = 3.138319;
//+
MeshSize {5} = 3.138319;
//+
MeshSize {6} = 1.515673;
//+
MeshSize {7} = 1.515673;
//+
MeshSize {8} = 1.515673;
//+
Cylinder(2) = {14.547669, 3.381445, 0.000000, 0.000000, 0.000000, 1.000000, 1.414330, 2*Pi};
//+
c0 = 0.14143304988974892;
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
