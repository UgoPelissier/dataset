//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.319588, -4.080289, 0.000000, 30.329803, 8.855428, 1.000000};
//+
MeshSize {1} = 3.096756;
//+
MeshSize {2} = 3.096756;
//+
MeshSize {3} = 3.096756;
//+
MeshSize {4} = 3.096756;
//+
MeshSize {5} = 0.445506;
//+
MeshSize {6} = 0.445506;
//+
MeshSize {7} = 0.290213;
//+
MeshSize {8} = 0.290213;
//+
Cylinder(2) = {28.421930, 1.219393, 0.000000, 0.000000, 0.000000, 1.000000, 1.293696, 2*Pi};
//+
MeshSize {9} = 0.129370;
//+
MeshSize {10} = 0.129370;
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
Save "../geo_unrolled/cad_176.geo_unrolled";
