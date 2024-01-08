//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.867189, -3.127698, 0.000000, 34.285508, 7.897431, 0.100000};
//+
MeshSize {1} = 1.753351;
//+
MeshSize {2} = 1.753351;
//+
MeshSize {3} = 2.066660;
//+
MeshSize {4} = 2.066660;
//+
MeshSize {5} = 0.913958;
//+
MeshSize {6} = 0.913958;
//+
MeshSize {7} = 0.606436;
//+
MeshSize {8} = 0.606436;
//+
Cylinder(2) = {10.936816, 0.053665, 0.000000, 0.000000, 0.000000, 0.100000, 0.635650, 2*Pi};
//+
MeshSize {9} = 0.063565;
//+
MeshSize {10} = 0.063565;
//+
Cylinder(3) = {29.925327, 2.995753, 0.000000, 0.000000, 0.000000, 0.100000, 0.528948, 2*Pi};
//+
MeshSize {11} = 0.052895;
//+
MeshSize {12} = 0.052895;
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
Save "../msh/cad_209.msh2";
//+
Save "../mesh/cad_209.mesh";
//+
Save "../geo_unrolled/cad_209.geo_unrolled";
