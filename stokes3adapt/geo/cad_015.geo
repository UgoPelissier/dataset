//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.157433, -3.021502, 0.000000, 30.643682, 7.964562, 1.000000};
//+
MeshSize {1} = 0.738274;
//+
MeshSize {2} = 0.738274;
//+
MeshSize {3} = 0.377491;
//+
MeshSize {4} = 0.377491;
//+
MeshSize {5} = 3.096366;
//+
MeshSize {6} = 3.096366;
//+
MeshSize {7} = 2.904043;
//+
MeshSize {8} = 2.904043;
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
