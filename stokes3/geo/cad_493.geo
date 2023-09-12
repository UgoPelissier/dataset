//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.937890, -3.173862, 0.000000, 38.492852, 7.629657, 1.000000};
//+
MeshSize {1} = 3.961485;
//+
MeshSize {2} = 3.961485;
//+
MeshSize {3} = 0.209691;
//+
MeshSize {4} = 0.209691;
//+
MeshSize {5} = 0.989883;
//+
MeshSize {6} = 0.989883;
//+
MeshSize {7} = 0.209691;
//+
MeshSize {8} = 0.209691;
//+
Cylinder(2) = {37.015977, -0.514634, 0.000000, 0.000000, 0.000000, 1.000000, 1.495106, 2*Pi};
//+
MeshSize {9} = 0.149511;
//+
MeshSize {10} = 0.149511;
//+
Cylinder(3) = {10.805427, 1.374662, 0.000000, 0.000000, 0.000000, 1.000000, 0.966587, 2*Pi};
//+
MeshSize {11} = 0.096659;
//+
MeshSize {12} = 0.096659;
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
Save "../geo_unrolled/cad_493.geo_unrolled";
