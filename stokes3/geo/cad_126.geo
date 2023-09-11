//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.807221, -3.927878, 0.000000, 38.938245, 9.546067, 1.000000};
//+
MeshSize {1} = 4.003104;
//+
MeshSize {2} = 4.003104;
//+
MeshSize {3} = 4.003104;
//+
MeshSize {4} = 4.003104;
//+
MeshSize {5} = 1.571798;
//+
MeshSize {6} = 1.571798;
//+
MeshSize {7} = 1.541123;
//+
MeshSize {8} = 1.541123;
//+
Cylinder(2) = {24.386756, 1.362216, 0.000000, 0.000000, 0.000000, 1.000000, 0.526254, 2*Pi};
//+
MeshSize {9} = 0.052625;
//+
MeshSize {10} = 0.052625;
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
Save "../geo_unrolled/cad_126.geo_unrolled";
