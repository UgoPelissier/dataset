//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.845518, -4.015123, 0.000000, 37.291865, 9.264971, 1.000000};
//+
MeshSize {1} = 1.107617;
//+
MeshSize {2} = 1.107617;
//+
MeshSize {3} = 3.841770;
//+
MeshSize {4} = 3.841770;
//+
MeshSize {5} = 0.743707;
//+
MeshSize {6} = 0.743707;
//+
MeshSize {7} = 3.841770;
//+
MeshSize {8} = 3.841770;
//+
Cylinder(2) = {11.343767, 1.060696, 0.000000, 0.000000, 0.000000, 1.000000, 0.584752, 2*Pi};
//+
MeshSize {9} = 0.058475;
//+
MeshSize {10} = 0.058475;
//+
Cylinder(3) = {6.980839, 1.792184, 0.000000, 0.000000, 0.000000, 1.000000, 1.010825, 2*Pi};
//+
MeshSize {11} = 0.101082;
//+
MeshSize {12} = 0.101082;
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
Save "../geo_unrolled/cad_265.geo_unrolled";
