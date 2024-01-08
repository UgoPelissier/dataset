//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.186906, -3.535690, 0.000000, 36.986121, 7.795826, 0.100000};
//+
MeshSize {1} = 0.667017;
//+
MeshSize {2} = 0.667017;
//+
MeshSize {3} = 0.541390;
//+
MeshSize {4} = 0.541390;
//+
MeshSize {5} = 2.674637;
//+
MeshSize {6} = 2.674637;
//+
MeshSize {7} = 2.764571;
//+
MeshSize {8} = 2.764571;
//+
Cylinder(2) = {8.562670, 2.425848, 0.000000, 0.000000, 0.000000, 0.100000, 1.220256, 2*Pi};
//+
MeshSize {9} = 0.122026;
//+
MeshSize {10} = 0.122026;
//+
Cylinder(3) = {17.899431, -0.165157, 0.000000, 0.000000, 0.000000, 0.100000, 0.710704, 2*Pi};
//+
MeshSize {11} = 0.071070;
//+
MeshSize {12} = 0.071070;
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
Save "../msh/cad_263.msh2";
//+
Save "../mesh/cad_263.mesh";
//+
Save "../geo_unrolled/cad_263.geo_unrolled";
