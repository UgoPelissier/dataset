//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.858219, -3.464494, 0.000000, 30.076786, 8.448160, 1.000000};
//+
l = [0.4699864757193599, 0.4699864757193599, 0.4699864757193599, 3.122206575146871, 3.122206575146871, 3.122206575146871, 3.122206575146871, 0.5743951767362209, 0.5743951767362209, 0.5743951767362209];
//+
MeshSize {1} = 0.469986;
//+
MeshSize {2} = 0.469986;
//+
MeshSize {3} = 0.469986;
//+
MeshSize {4} = 3.122207;
//+
MeshSize {5} = 3.122207;
//+
MeshSize {6} = 3.122207;
//+
MeshSize {7} = 3.122207;
//+
MeshSize {8} = 0.574395;
//+
Cylinder(2) = {5.301752, -0.001196, 0.000000, 0.000000, 0.000000, 1.000000, 0.933910, 2*Pi};
//+
c0 = 0.09339096519716623;
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
