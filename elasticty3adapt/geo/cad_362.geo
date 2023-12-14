//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.733815, -4.326763, 0.000000, 38.871998, 9.495558, 1.000000};
//+
MeshSize {1} = 0.518861;
//+
MeshSize {2} = 0.518861;
//+
MeshSize {3} = 0.695109;
//+
MeshSize {4} = 0.695109;
//+
MeshSize {5} = 3.346226;
//+
MeshSize {6} = 3.346226;
//+
MeshSize {7} = 2.148211;
//+
MeshSize {8} = 2.148211;
//+
Cylinder(2) = {29.681597, 2.155223, 0.000000, 0.000000, 0.000000, 0.100000, 1.063706, 2*Pi};
//+
MeshSize {9} = 0.106371;
//+
MeshSize {10} = 0.106371;
//+
Cylinder(3) = {2.432500, -0.254856, 0.000000, 0.000000, 0.000000, 0.100000, 0.669079, 2*Pi};
//+
MeshSize {11} = 0.066908;
//+
MeshSize {12} = 0.066908;
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
Save "../msh/cad_362.msh2";
//+
Save "../mesh/cad_362.mesh";
//+
Save "../geo_unrolled/cad_362.geo_unrolled";
