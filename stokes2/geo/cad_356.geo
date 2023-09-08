//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.823688, -3.605040, 0.000000, 29.264349, 9.172346, 0.000000};
//+
l = [1.34433896235435, 1.0712537542767646, 3.0435554074952904, 3.0435554074952904, 3.0435554074952904, 3.0435554074952904, 1.1608143816050158, 1.1190957062816984];
//+
MeshSize {1} = 1.344339;
//+
MeshSize {2} = 1.071254;
//+
MeshSize {3} = 3.043555;
//+
MeshSize {4} = 3.043555;
//+
Disk(2) = {13.409253, 3.710182, 0.000000, 1.113701, 1.113701};
//+
c0 = 0.11137010970607944;
//+
MeshSize {5} = c0;
//+
Disk(3) = {11.610249, 0.369071, 0.000000, 0.782829, 0.782829};
//+
c1 = 0.07828289942793976;
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
