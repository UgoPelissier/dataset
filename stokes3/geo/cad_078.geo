//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.661183, -3.497035, 0.000000, 33.590207, 8.861406, 1.000000};
//+
MeshSize {1} = 3.453677;
//+
MeshSize {2} = 3.453677;
//+
MeshSize {3} = 3.453677;
//+
MeshSize {4} = 3.453677;
//+
MeshSize {5} = 0.874185;
//+
MeshSize {6} = 0.874185;
//+
MeshSize {7} = 0.903524;
//+
MeshSize {8} = 0.903524;
//+
Cylinder(2) = {25.652843, 0.613272, 0.000000, 0.000000, 0.000000, 1.000000, 0.788611, 2*Pi};
//+
MeshSize {9} = 0.078861;
//+
MeshSize {10} = 0.078861;
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
Save "../geo_unrolled/cad_078.geo_unrolled";
