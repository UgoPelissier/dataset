//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.247240, -3.763963, 0.000000, 37.410897, 8.803250, 0.000000};
//+
l = [3.7914503439514426, 1.3590694313595, 1.5135580587571003, 3.7914503439514426];
//+
MeshSize {1} = 3.791450;
//+
MeshSize {2} = 1.359069;
//+
MeshSize {3} = 1.513558;
//+
MeshSize {4} = 3.791450;
//+
Disk(2) = {23.602178, -1.984275, 0.000000, 0.577483, 0.577483};
//+
c0 = 0.05774833538647359;
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
