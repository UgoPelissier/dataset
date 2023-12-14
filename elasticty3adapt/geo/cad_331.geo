//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.868819, -4.095610, 0.000000, 36.251656, 8.548954, 1.000000};
//+
MeshSize {1} = 0.474204;
//+
MeshSize {2} = 0.474204;
//+
MeshSize {3} = 0.416370;
//+
MeshSize {4} = 0.416370;
//+
MeshSize {5} = 3.915931;
//+
MeshSize {6} = 3.915931;
//+
MeshSize {7} = 3.604272;
//+
MeshSize {8} = 3.604272;
//+
Cylinder(2) = {11.489466, 2.296509, 0.000000, 0.000000, 0.000000, 0.100000, 0.946258, 2*Pi};
//+
MeshSize {9} = 0.094626;
//+
MeshSize {10} = 0.094626;
//+
Cylinder(3) = {7.529952, 1.047763, 0.000000, 0.000000, 0.000000, 0.100000, 0.753111, 2*Pi};
//+
MeshSize {11} = 0.075311;
//+
MeshSize {12} = 0.075311;
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
Save "../msh/cad_331.msh2";
//+
Save "../mesh/cad_331.mesh";
//+
Save "../geo_unrolled/cad_331.geo_unrolled";
