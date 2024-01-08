//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.823360, -3.847050, 0.000000, 32.638237, 8.189124, 0.100000};
//+
MeshSize {1} = 5.042666;
//+
MeshSize {2} = 5.042666;
//+
MeshSize {3} = 5.212609;
//+
MeshSize {4} = 5.212609;
//+
MeshSize {5} = 0.371031;
//+
MeshSize {6} = 0.371031;
//+
MeshSize {7} = 0.180266;
//+
MeshSize {8} = 0.180266;
//+
Cylinder(2) = {31.367248, 1.842749, 0.000000, 0.000000, 0.000000, 0.100000, 0.612845, 2*Pi};
//+
MeshSize {9} = 0.061284;
//+
MeshSize {10} = 0.061284;
//+
Cylinder(3) = {27.086433, -0.661349, 0.000000, 0.000000, 0.000000, 0.100000, 1.266053, 2*Pi};
//+
MeshSize {11} = 0.126605;
//+
MeshSize {12} = 0.126605;
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
Save "../msh/cad_128.msh2";
//+
Save "../mesh/cad_128.mesh";
//+
Save "../geo_unrolled/cad_128.geo_unrolled";
