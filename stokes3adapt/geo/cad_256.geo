//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.098202, -3.437974, 0.000000, 34.773702, 8.327127, 1.000000};
//+
MeshSize {1} = 0.622924;
//+
MeshSize {2} = 0.622924;
//+
MeshSize {3} = 0.539460;
//+
MeshSize {4} = 0.539460;
//+
MeshSize {5} = 3.379643;
//+
MeshSize {6} = 3.379643;
//+
MeshSize {7} = 2.389592;
//+
MeshSize {8} = 2.389592;
//+
Cylinder(2) = {4.471106, 1.294643, 0.000000, 0.000000, 0.000000, 1.000000, 0.600045, 2*Pi};
//+
MeshSize {9} = 0.060005;
//+
MeshSize {10} = 0.060005;
//+
Cylinder(3) = {21.603695, 3.331838, 0.000000, 0.000000, 0.000000, 1.000000, 0.817786, 2*Pi};
//+
MeshSize {11} = 0.081779;
//+
MeshSize {12} = 0.081779;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_256.geo_unrolled";
