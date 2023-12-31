//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.540994, -3.711812, 0.000000, 38.359437, 9.339782, 0.100000};
//+
MeshSize {1} = 1.906942;
//+
MeshSize {2} = 1.906942;
//+
MeshSize {3} = 1.711820;
//+
MeshSize {4} = 1.711820;
//+
MeshSize {5} = 0.826933;
//+
MeshSize {6} = 0.826933;
//+
MeshSize {7} = 0.736756;
//+
MeshSize {8} = 0.736756;
//+
Cylinder(2) = {25.126432, 3.417927, 0.000000, 0.000000, 0.000000, 0.100000, 1.207209, 2*Pi};
//+
MeshSize {9} = 0.120721;
//+
MeshSize {10} = 0.120721;
//+
Cylinder(3) = {22.250844, 2.766058, 0.000000, 0.000000, 0.000000, 0.100000, 1.207399, 2*Pi};
//+
MeshSize {11} = 0.120740;
//+
MeshSize {12} = 0.120740;
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
Save "../msh/cad_480.msh2";
//+
Save "../mesh/cad_480.mesh";
//+
Save "../geo_unrolled/cad_480.geo_unrolled";
