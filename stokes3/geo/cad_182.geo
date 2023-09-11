//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.125170, -4.075392, 0.000000, 35.209610, 8.756433, 1.000000};
//+
MeshSize {1} = 3.560499;
//+
MeshSize {2} = 3.560499;
//+
MeshSize {3} = 3.560499;
//+
MeshSize {4} = 3.560499;
//+
MeshSize {5} = 1.236698;
//+
MeshSize {6} = 1.236698;
//+
MeshSize {7} = 1.126286;
//+
MeshSize {8} = 1.126286;
//+
Cylinder(2) = {23.276181, 1.931956, 0.000000, 0.000000, 0.000000, 1.000000, 1.105139, 2*Pi};
//+
MeshSize {9} = 0.110514;
//+
MeshSize {10} = 0.110514;
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
Save "../geo_unrolled/cad_182.geo_unrolled";
