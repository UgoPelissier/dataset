//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.166809, -3.991495, 0.000000, 33.848762, 8.343782, 1.000000};
//+
MeshSize {1} = 0.707027;
//+
MeshSize {2} = 0.707027;
//+
MeshSize {3} = 0.783055;
//+
MeshSize {4} = 0.783055;
//+
MeshSize {5} = 2.091558;
//+
MeshSize {6} = 2.091558;
//+
MeshSize {7} = 1.865671;
//+
MeshSize {8} = 1.865671;
//+
Cylinder(2) = {11.984505, -1.542306, 0.000000, 0.000000, 0.000000, 0.100000, 1.491463, 2*Pi};
//+
MeshSize {9} = 0.149146;
//+
MeshSize {10} = 0.149146;
//+
Cylinder(3) = {14.646699, 1.884591, 0.000000, 0.000000, 0.000000, 0.100000, 1.108413, 2*Pi};
//+
MeshSize {11} = 0.110841;
//+
MeshSize {12} = 0.110841;
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
Save "../msh/cad_305.msh2";
//+
Save "../mesh/cad_305.mesh";
//+
Save "../geo_unrolled/cad_305.geo_unrolled";
