//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.394020, -3.989045, 0.000000, 29.877000, 9.106874, 0.000000};
//+
l = [0.4650023760640827, 3.0611574101232666, 3.0611574101232666, 0.605849679239135];
//+
MeshSize {1} = 0.465002;
//+
MeshSize {2} = 3.061157;
//+
MeshSize {3} = 3.061157;
//+
MeshSize {4} = 0.605850;
//+
Disk(2) = {4.107762, -0.348807, 0.000000, 0.550285, 0.550285};
//+
c0 = 0.05502846334886276;
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
