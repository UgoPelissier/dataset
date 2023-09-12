//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.157433, -3.021502, 0.000000, 30.643682, 7.964562, 1.000000};
//+
MeshSize {1} = 3.105748;
//+
MeshSize {2} = 3.105748;
//+
MeshSize {3} = 1.249714;
//+
MeshSize {4} = 1.249714;
//+
MeshSize {5} = 0.633010;
//+
MeshSize {6} = 0.633010;
//+
MeshSize {7} = 1.249714;
//+
MeshSize {8} = 1.249714;
//+
Cylinder(2) = {18.327745, 1.395491, 0.000000, 0.000000, 0.000000, 1.000000, 0.735204, 2*Pi};
//+
MeshSize {9} = 0.073520;
//+
MeshSize {10} = 0.073520;
//+
Cylinder(3) = {3.692641, 3.108468, 0.000000, 0.000000, 0.000000, 1.000000, 0.746215, 2*Pi};
//+
MeshSize {11} = 0.074622;
//+
MeshSize {12} = 0.074622;
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
Save "../geo_unrolled/cad_015.geo_unrolled";
