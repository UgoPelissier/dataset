//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.735675, -3.953047, 0.000000, 33.134199, 8.904182, 1.000000};
//+
MeshSize {1} = 0.465996;
//+
MeshSize {2} = 0.465996;
//+
MeshSize {3} = 0.266753;
//+
MeshSize {4} = 0.266753;
//+
MeshSize {5} = 3.416123;
//+
MeshSize {6} = 3.416123;
//+
MeshSize {7} = 3.416123;
//+
MeshSize {8} = 3.416123;
//+
Cylinder(2) = {8.866343, -2.134423, 0.000000, 0.000000, 0.000000, 1.000000, 0.946273, 2*Pi};
//+
MeshSize {9} = 0.094627;
//+
MeshSize {10} = 0.094627;
//+
Cylinder(3) = {2.973461, 1.619931, 0.000000, 0.000000, 0.000000, 1.000000, 1.345521, 2*Pi};
//+
MeshSize {11} = 0.134552;
//+
MeshSize {12} = 0.134552;
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
Save "../geo_unrolled/cad_100.geo_unrolled";
