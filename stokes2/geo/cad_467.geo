//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.179797, -3.803142, 0.000000, 35.340703, 8.625114, 0.000000};
//+
l = [3.5781337195737835, 1.68547014544828, 1.5722853233210092, 1.5722853233210092, 1.4366454216160376, 1.4366454216160376, 3.5781337195737835, 1.7460443431600297];
//+
MeshSize {1} = 3.578134;
//+
MeshSize {2} = 1.685470;
//+
MeshSize {3} = 1.572285;
//+
MeshSize {4} = 1.572285;
//+
Disk(2) = {20.528665, 2.991223, 0.000000, 0.736750, 0.736750};
//+
c0 = 0.07367499672780185;
//+
MeshSize {5} = c0;
//+
Disk(3) = {17.821658, -0.769034, 0.000000, 1.046166, 1.046166};
//+
c1 = 0.10461662603642968;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
