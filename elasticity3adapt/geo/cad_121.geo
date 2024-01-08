//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.723118, -3.032162, 0.000000, 38.409180, 7.937662, 0.100000};
//+
MeshSize {1} = 5.538597;
//+
MeshSize {2} = 5.538597;
//+
MeshSize {3} = 5.310641;
//+
MeshSize {4} = 5.310641;
//+
MeshSize {5} = 0.342318;
//+
MeshSize {6} = 0.342318;
//+
MeshSize {7} = 0.143709;
//+
MeshSize {8} = 0.143709;
//+
Cylinder(2) = {36.728029, 2.786594, 0.000000, 0.000000, 0.000000, 0.100000, 0.968021, 2*Pi};
//+
MeshSize {9} = 0.096802;
//+
MeshSize {10} = 0.096802;
//+
Cylinder(3) = {28.825550, 2.308015, 0.000000, 0.000000, 0.000000, 0.100000, 1.067781, 2*Pi};
//+
MeshSize {11} = 0.106778;
//+
MeshSize {12} = 0.106778;
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
Save "../msh/cad_121.msh2";
//+
Save "../mesh/cad_121.mesh";
//+
Save "../geo_unrolled/cad_121.geo_unrolled";
