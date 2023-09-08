//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.661939, -3.605797, 0.000000, 33.758503, 8.182917, 0.000000};
//+
l = [0.9417739019483021, 3.4662758854843214, 3.4662758854843214, 0.8620462771371189];
//+
MeshSize {1} = 0.941774;
//+
MeshSize {2} = 3.466276;
//+
MeshSize {3} = 3.466276;
//+
MeshSize {4} = 0.862046;
//+
Disk(2) = {9.749469, 1.460538, 0.000000, 0.986633, 0.986633};
//+
c0 = 0.09866327533642509;
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
