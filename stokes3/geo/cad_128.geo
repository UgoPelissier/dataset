//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.006106, -3.381118, 0.000000, 35.657105, 8.501961, 1.000000};
//+
MeshSize {1} = 0.624497;
//+
MeshSize {2} = 0.624497;
//+
MeshSize {3} = 0.590735;
//+
MeshSize {4} = 0.590735;
//+
MeshSize {5} = 3.591567;
//+
MeshSize {6} = 3.591567;
//+
MeshSize {7} = 3.591567;
//+
MeshSize {8} = 3.591567;
//+
Cylinder(2) = {5.059706, 1.132223, 0.000000, 0.000000, 0.000000, 1.000000, 0.530657, 2*Pi};
//+
MeshSize {9} = 0.053066;
//+
MeshSize {10} = 0.053066;
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
Save "../geo_unrolled/cad_128.geo_unrolled";
