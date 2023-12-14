//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.671690, -4.389834, 0.000000, 32.490082, 9.379661, 1.000000};
//+
MeshSize {1} = 4.980721;
//+
MeshSize {2} = 4.980721;
//+
MeshSize {3} = 4.677847;
//+
MeshSize {4} = 4.677847;
//+
MeshSize {5} = 0.285570;
//+
MeshSize {6} = 0.285570;
//+
MeshSize {7} = 0.334222;
//+
MeshSize {8} = 0.334222;
//+
Cylinder(2) = {29.158159, -1.223792, 0.000000, 0.000000, 0.000000, 0.100000, 0.657747, 2*Pi};
//+
MeshSize {9} = 0.065775;
//+
MeshSize {10} = 0.065775;
//+
Cylinder(3) = {27.648460, 1.909136, 0.000000, 0.000000, 0.000000, 0.100000, 1.111678, 2*Pi};
//+
MeshSize {11} = 0.111168;
//+
MeshSize {12} = 0.111168;
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
Save "../msh/cad_017.msh2";
//+
Save "../mesh/cad_017.mesh";
//+
Save "../geo_unrolled/cad_017.geo_unrolled";
