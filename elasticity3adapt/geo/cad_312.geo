//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.394322, -4.332112, 0.000000, 30.431129, 8.928601, 0.100000};
//+
MeshSize {1} = 0.309782;
//+
MeshSize {2} = 0.309782;
//+
MeshSize {3} = 0.514341;
//+
MeshSize {4} = 0.514341;
//+
MeshSize {5} = 4.519807;
//+
MeshSize {6} = 4.519807;
//+
MeshSize {7} = 3.529123;
//+
MeshSize {8} = 3.529123;
//+
Cylinder(2) = {1.520037, -0.900081, 0.000000, 0.000000, 0.000000, 0.100000, 0.585079, 2*Pi};
//+
MeshSize {9} = 0.058508;
//+
MeshSize {10} = 0.058508;
//+
Cylinder(3) = {15.468924, 2.444876, 0.000000, 0.000000, 0.000000, 0.100000, 0.630375, 2*Pi};
//+
MeshSize {11} = 0.063038;
//+
MeshSize {12} = 0.063038;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; }
//+
Physical Volume("SOLID", 1) = {1, 2, 3};
//+
Physical Surface("WALLS", 2) = {13, 18};
//+
Physical Surface("LOAD", 3) = {8, 11};
//+
Physical Surface("BORDER", 4) = {7, 9, 10, 12, 14, 15, 16, 17};
//+
//+
//+
//+
//+
//+
Mesh 3;
//+
Save "../msh/cad_312.msh2";
//+
Save "../mesh/cad_312.mesh";
//+
Save "../geo_unrolled/cad_312.geo_unrolled";
