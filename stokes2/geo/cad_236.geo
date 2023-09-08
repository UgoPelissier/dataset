//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.512817, -4.479371, 0.000000, 30.473266, 9.953296, 0.000000};
//+
l = [1.4671983726339957, 3.138318535929237, 1.5156725914681584, 1.2775650246744523];
//+
MeshSize {1} = 1.467198;
//+
MeshSize {2} = 3.138319;
//+
MeshSize {3} = 1.515673;
//+
MeshSize {4} = 1.277565;
//+
Disk(2) = {14.547669, 3.381445, 0.000000, 1.414330, 1.414330};
//+
c0 = 0.14143304988974892;
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
