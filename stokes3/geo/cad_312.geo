//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.394322, -4.332112, 0.000000, 30.431129, 8.928601, 1.000000};
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
MeshSize {5} = 1.000000;
//+
MeshSize {6} = 1.000000;
//+
MeshSize {7} = 1.000000;
//+
MeshSize {8} = 1.000000;
//+
Cylinder(2) = {1.520037, -0.900081, 0.000000, 0.000000, 0.000000, 1.000000, 0.585079, 2*Pi};
//+
MeshSize {9} = 0.058508;
//+
MeshSize {10} = 0.058508;
//+
Cylinder(3) = {15.468924, 2.444876, 0.000000, 0.000000, 0.000000, 1.000000, 0.630375, 2*Pi};
//+
MeshSize {11} = 0.063038;
//+
MeshSize {12} = 0.063038;
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
Save "../geo_unrolled/cad_312.geo_unrolled";
