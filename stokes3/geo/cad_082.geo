//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.491726, -4.075393, 0.000000, 32.987885, 8.333271, 1.000000};
//+
MeshSize {1} = 3.373789;
//+
MeshSize {2} = 3.373789;
//+
MeshSize {3} = 3.373789;
//+
MeshSize {4} = 3.373789;
//+
MeshSize {5} = 0.906755;
//+
MeshSize {6} = 0.906755;
//+
MeshSize {7} = 1.044817;
//+
MeshSize {8} = 1.044817;
//+
Cylinder(2) = {23.223924, -1.764839, 0.000000, 0.000000, 0.000000, 1.000000, 1.445194, 2*Pi};
//+
MeshSize {9} = 0.144519;
//+
MeshSize {10} = 0.144519;
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
Save "../geo_unrolled/cad_082.geo_unrolled";
