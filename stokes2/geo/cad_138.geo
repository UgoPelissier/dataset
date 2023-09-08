//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.818949, -3.118018, 0.000000, 31.543740, 7.866111, 0.000000};
//+
l = [0.5549071476075446, 3.260080566559002, 3.260080566559002, 0.5560100820601352];
//+
MeshSize {1} = 0.554907;
//+
MeshSize {2} = 3.260081;
//+
MeshSize {3} = 3.260081;
//+
MeshSize {4} = 0.556010;
//+
Disk(2) = {6.384246, 0.805482, 0.000000, 1.260215, 1.260215};
//+
c0 = 0.1260215295546892;
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
