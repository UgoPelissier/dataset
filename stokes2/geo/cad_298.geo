//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.034649, -3.499705, 0.000000, 32.423198, 8.237763, 0.000000};
//+
l = [1.334010142176325, 1.334010142176325, 3.2718145848260622, 0.4141683329043986, 3.2718145848260622, 0.47426038183840497, 1.3459069347309454, 1.3459069347309454];
//+
MeshSize {1} = 1.334010;
//+
MeshSize {2} = 1.334010;
//+
MeshSize {3} = 3.271815;
//+
MeshSize {4} = 0.414168;
//+
Disk(2) = {13.372380, 0.417561, 0.000000, 0.560979, 0.560979};
//+
c0 = 0.05609790689328428;
//+
MeshSize {5} = c0;
//+
Disk(3) = {28.713917, 0.212650, 0.000000, 1.130754, 1.130754};
//+
c1 = 0.11307543888247557;
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
