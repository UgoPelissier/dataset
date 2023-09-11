//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.858219, -3.464494, 0.000000, 30.076786, 8.448160, 1.000000};
//+
MeshSize {1} = 0.469986;
//+
MeshSize {2} = 0.469986;
//+
MeshSize {3} = 0.574395;
//+
MeshSize {4} = 0.574395;
//+
MeshSize {5} = 3.122207;
//+
MeshSize {6} = 3.122207;
//+
MeshSize {7} = 3.122207;
//+
MeshSize {8} = 3.122207;
//+
Cylinder(2) = {5.301752, -0.001196, 0.000000, 0.000000, 0.000000, 1.000000, 0.933910, 2*Pi};
//+
MeshSize {9} = 0.093391;
//+
MeshSize {10} = 0.093391;
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
//+
Save "../geo_unrolled/cad_245.geo_unrolled";
