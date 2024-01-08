//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.925676, -4.768509, 0.000000, 30.074003, 9.618417, 1.000000};
//+
MeshSize {1} = 1.179249;
//+
MeshSize {2} = 1.179249;
//+
MeshSize {3} = 0.883399;
//+
MeshSize {4} = 0.883399;
//+
MeshSize {5} = 1.361053;
//+
MeshSize {6} = 1.361053;
//+
MeshSize {7} = 0.951885;
//+
MeshSize {8} = 0.951885;
//+
Cylinder(2) = {18.985490, 2.670665, 0.000000, 0.000000, 0.000000, 0.100000, 0.515630, 2*Pi};
//+
MeshSize {9} = 0.051563;
//+
MeshSize {10} = 0.051563;
//+
Cylinder(3) = {12.902756, 2.956815, 0.000000, 0.000000, 0.000000, 0.100000, 1.272563, 2*Pi};
//+
MeshSize {11} = 0.127256;
//+
MeshSize {12} = 0.127256;
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
Save "../msh/cad_380.msh2";
//+
Save "../mesh/cad_380.mesh";
//+
Save "../geo_unrolled/cad_380.geo_unrolled";
