//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.692835, -3.442461, 0.000000, 37.263733, 8.522854, 0.100000};
//+
MeshSize {1} = 1.684572;
//+
MeshSize {2} = 1.684572;
//+
MeshSize {3} = 1.644570;
//+
MeshSize {4} = 1.644570;
//+
MeshSize {5} = 0.835711;
//+
MeshSize {6} = 0.835711;
//+
MeshSize {7} = 0.794059;
//+
MeshSize {8} = 0.794059;
//+
Cylinder(2) = {18.951837, 1.136404, 0.000000, 0.000000, 0.000000, 0.100000, 0.742021, 2*Pi};
//+
MeshSize {9} = 0.074202;
//+
MeshSize {10} = 0.074202;
//+
Cylinder(3) = {25.000586, 1.834428, 0.000000, 0.000000, 0.000000, 0.100000, 1.289077, 2*Pi};
//+
MeshSize {11} = 0.128908;
//+
MeshSize {12} = 0.128908;
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
Save "../msh/cad_150.msh2";
//+
Save "../mesh/cad_150.mesh";
//+
Save "../geo_unrolled/cad_150.geo_unrolled";
