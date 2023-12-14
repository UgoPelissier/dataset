//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.361901, -3.262967, 0.000000, 35.035327, 8.048190, 1.000000};
//+
MeshSize {1} = 0.997278;
//+
MeshSize {2} = 0.997278;
//+
MeshSize {3} = 0.770905;
//+
MeshSize {4} = 0.770905;
//+
MeshSize {5} = 1.508714;
//+
MeshSize {6} = 1.508714;
//+
MeshSize {7} = 1.276903;
//+
MeshSize {8} = 1.276903;
//+
Cylinder(2) = {27.267592, 1.282295, 0.000000, 0.000000, 0.000000, 0.100000, 0.776427, 2*Pi};
//+
MeshSize {9} = 0.077643;
//+
MeshSize {10} = 0.077643;
//+
Cylinder(3) = {6.857115, 2.387198, 0.000000, 0.000000, 0.000000, 0.100000, 1.185244, 2*Pi};
//+
MeshSize {11} = 0.118524;
//+
MeshSize {12} = 0.118524;
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
Save "../msh/cad_382.msh2";
//+
Save "../mesh/cad_382.mesh";
//+
Save "../geo_unrolled/cad_382.geo_unrolled";
