//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.987189, -4.433702, 0.000000, 35.899354, 9.834729, 0.100000};
//+
MeshSize {1} = 0.735020;
//+
MeshSize {2} = 0.735020;
//+
MeshSize {3} = 0.749148;
//+
MeshSize {4} = 0.749148;
//+
MeshSize {5} = 2.065920;
//+
MeshSize {6} = 2.065920;
//+
MeshSize {7} = 1.916873;
//+
MeshSize {8} = 1.916873;
//+
Cylinder(2) = {11.674169, 0.249716, 0.000000, 0.000000, 0.000000, 0.100000, 1.495024, 2*Pi};
//+
MeshSize {9} = 0.149502;
//+
MeshSize {10} = 0.149502;
//+
Cylinder(3) = {19.170150, 1.296784, 0.000000, 0.000000, 0.000000, 0.100000, 0.992504, 2*Pi};
//+
MeshSize {11} = 0.099250;
//+
MeshSize {12} = 0.099250;
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
Save "../msh/cad_336.msh2";
//+
Save "../mesh/cad_336.mesh";
//+
Save "../geo_unrolled/cad_336.geo_unrolled";
