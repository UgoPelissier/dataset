//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.934248, -3.595811, 0.000000, 37.271246, 8.207097, 0.000000};
//+
l = [0.9825307333884338, 3.8425238319078616, 3.8425238319078616, 0.9675183637628729];
//+
MeshSize {1} = 0.982531;
//+
MeshSize {2} = 3.842524;
//+
MeshSize {3} = 3.842524;
//+
MeshSize {4} = 0.967518;
//+
Disk(2) = {11.406474, 0.713506, 0.000000, 1.498902, 1.498902};
//+
c0 = 0.14989023332293389;
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
