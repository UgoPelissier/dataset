//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.547613, -3.092150, 0.000000, 37.769282, 7.529904, 1.000000};
//+
MeshSize {1} = 0.662397;
//+
MeshSize {2} = 0.662397;
//+
MeshSize {3} = 0.838060;
//+
MeshSize {4} = 0.838060;
//+
MeshSize {5} = 2.053148;
//+
MeshSize {6} = 2.053148;
//+
MeshSize {7} = 1.854335;
//+
MeshSize {8} = 1.854335;
//+
Cylinder(2) = {8.407352, -1.631753, 0.000000, 0.000000, 0.000000, 0.100000, 0.693080, 2*Pi};
//+
MeshSize {9} = 0.069308;
//+
MeshSize {10} = 0.069308;
//+
Cylinder(3) = {24.449355, 1.566785, 0.000000, 0.000000, 0.000000, 0.100000, 0.619977, 2*Pi};
//+
MeshSize {11} = 0.061998;
//+
MeshSize {12} = 0.061998;
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
Save "../msh/cad_369.msh2";
//+
Save "../mesh/cad_369.mesh";
//+
Save "../geo_unrolled/cad_369.geo_unrolled";
