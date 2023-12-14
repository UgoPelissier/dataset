//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.859584, -4.750035, 0.000000, 35.156413, 9.667929, 1.000000};
//+
MeshSize {1} = 4.224760;
//+
MeshSize {2} = 4.224760;
//+
MeshSize {3} = 4.944869;
//+
MeshSize {4} = 4.944869;
//+
MeshSize {5} = 0.288305;
//+
MeshSize {6} = 0.288305;
//+
MeshSize {7} = 0.391434;
//+
MeshSize {8} = 0.391434;
//+
Cylinder(2) = {32.435103, -0.899051, 0.000000, 0.000000, 0.000000, 0.100000, 0.863434, 2*Pi};
//+
MeshSize {9} = 0.086343;
//+
MeshSize {10} = 0.086343;
//+
Cylinder(3) = {26.084026, -3.475039, 0.000000, 0.000000, 0.000000, 0.100000, 0.611932, 2*Pi};
//+
MeshSize {11} = 0.061193;
//+
MeshSize {12} = 0.061193;
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
Save "../msh/cad_430.msh2";
//+
Save "../mesh/cad_430.mesh";
//+
Save "../geo_unrolled/cad_430.geo_unrolled";
