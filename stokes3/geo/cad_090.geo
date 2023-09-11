//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.489640, -4.032810, 0.000000, 34.896165, 8.362810, 1.000000};
//+
MeshSize {1} = 3.563200;
//+
MeshSize {2} = 3.563200;
//+
MeshSize {3} = 3.563200;
//+
MeshSize {4} = 3.563200;
//+
MeshSize {5} = 1.549853;
//+
MeshSize {6} = 1.549853;
//+
MeshSize {7} = 1.538910;
//+
MeshSize {8} = 1.538910;
//+
Cylinder(2) = {19.530043, 0.363197, 0.000000, 0.000000, 0.000000, 1.000000, 0.955345, 2*Pi};
//+
MeshSize {9} = 0.095534;
//+
MeshSize {10} = 0.095534;
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
Save "../geo_unrolled/cad_090.geo_unrolled";
