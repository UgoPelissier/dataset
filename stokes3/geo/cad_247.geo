//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.928766, -4.169310, 0.000000, 38.685926, 8.967590, 1.000000};
//+
MeshSize {1} = 3.986763;
//+
MeshSize {2} = 3.986763;
//+
MeshSize {3} = 3.986763;
//+
MeshSize {4} = 3.986763;
//+
MeshSize {5} = 1.064508;
//+
MeshSize {6} = 1.064508;
//+
MeshSize {7} = 0.933294;
//+
MeshSize {8} = 0.933294;
//+
Cylinder(2) = {29.800329, 1.907509, 0.000000, 0.000000, 0.000000, 1.000000, 0.898296, 2*Pi};
//+
MeshSize {9} = 0.089830;
//+
MeshSize {10} = 0.089830;
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
Save "../geo_unrolled/cad_247.geo_unrolled";
