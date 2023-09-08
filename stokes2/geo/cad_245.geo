//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.858219, -3.464494, 0.000000, 30.076786, 8.448160, 0.000000};
//+
l = [0.4699864757193599, 3.122206575146871, 3.122206575146871, 0.5743951767362209];
//+
MeshSize {1} = 0.469986;
//+
MeshSize {2} = 3.122207;
//+
MeshSize {3} = 3.122207;
//+
MeshSize {4} = 0.574395;
//+
Disk(2) = {5.301752, -0.001196, 0.000000, 0.933910, 0.933910};
//+
c0 = 0.09339096519716623;
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
