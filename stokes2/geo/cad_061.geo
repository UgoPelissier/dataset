//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.396654, -3.898253, 0.000000, 30.363310, 9.226536, 0.000000};
//+
l = [3.110398165820371, 0.6048545173440507, 0.5749338257512884, 3.110398165820371];
//+
MeshSize {1} = 3.110398;
//+
MeshSize {2} = 0.604855;
//+
MeshSize {3} = 0.574934;
//+
MeshSize {4} = 3.110398;
//+
Disk(2) = {26.154990, 0.926451, 0.000000, 0.621055, 0.621055};
//+
c0 = 0.062105506506731516;
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
