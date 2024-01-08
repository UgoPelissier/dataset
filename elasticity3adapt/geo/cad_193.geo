//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.055909, -3.811739, 0.000000, 32.138207, 9.616263, 0.100000};
//+
MeshSize {1} = 4.145673;
//+
MeshSize {2} = 4.145673;
//+
MeshSize {3} = 4.346764;
//+
MeshSize {4} = 4.346764;
//+
MeshSize {5} = 0.369932;
//+
MeshSize {6} = 0.369932;
//+
MeshSize {7} = 0.391619;
//+
MeshSize {8} = 0.391619;
//+
Cylinder(2) = {25.671288, -1.396237, 0.000000, 0.000000, 0.000000, 0.100000, 1.339222, 2*Pi};
//+
MeshSize {9} = 0.133922;
//+
MeshSize {10} = 0.133922;
//+
Cylinder(3) = {25.955225, 1.900429, 0.000000, 0.000000, 0.000000, 0.100000, 1.413980, 2*Pi};
//+
MeshSize {11} = 0.141398;
//+
MeshSize {12} = 0.141398;
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
Save "../msh/cad_193.msh2";
//+
Save "../mesh/cad_193.mesh";
//+
Save "../geo_unrolled/cad_193.geo_unrolled";
