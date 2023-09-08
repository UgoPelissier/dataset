//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.383043, -3.311247, 0.000000, 35.706578, 7.593664, 0.000000};
//+
l = [3.6288796002732155, 3.6288796002732155, 0.6421170453328816, 0.605567156268831, 0.2605337945311755, 0.2605337945311755, 3.6288796002732155, 3.6288796002732155];
//+
MeshSize {1} = 3.628880;
//+
MeshSize {2} = 3.628880;
//+
MeshSize {3} = 0.642117;
//+
MeshSize {4} = 0.605567;
//+
Disk(2) = {33.232586, 3.014923, 0.000000, 0.520233, 0.520233};
//+
c0 = 0.052023288859327194;
//+
MeshSize {5} = c0;
//+
Disk(3) = {29.499149, -1.495535, 0.000000, 0.780347, 0.780347};
//+
c1 = 0.07803466531846416;
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
