//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.396654, -3.898253, 0.000000, 30.363310, 9.226536, 1.000000};
//+
l = [3.110398165820371, 3.110398165820371, 0.6048545173440507, 0.6048545173440507, 0.6048545173440507, 0.5749338257512884, 0.5749338257512884, 0.5749338257512884, 3.110398165820371, 3.110398165820371];
//+
MeshSize {1} = 3.110398;
//+
MeshSize {2} = 3.110398;
//+
MeshSize {3} = 0.604855;
//+
MeshSize {4} = 0.604855;
//+
MeshSize {5} = 0.604855;
//+
MeshSize {6} = 0.574934;
//+
MeshSize {7} = 0.574934;
//+
MeshSize {8} = 0.574934;
//+
Cylinder(2) = {26.154990, 0.926451, 0.000000, 0.000000, 0.000000, 1.000000, 0.621055, 2*Pi};
//+
c0 = 0.062105506506731516;
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
