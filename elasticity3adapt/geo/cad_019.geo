//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.717612, -3.876383, 0.000000, 35.624767, 8.159960, 0.100000};
//+
MeshSize {1} = 0.225584;
//+
MeshSize {2} = 0.225584;
//+
MeshSize {3} = 0.317092;
//+
MeshSize {4} = 0.317092;
//+
MeshSize {5} = 5.324356;
//+
MeshSize {6} = 5.324356;
//+
MeshSize {7} = 5.010251;
//+
MeshSize {8} = 5.010251;
//+
Cylinder(2) = {3.354346, -0.623619, 0.000000, 0.000000, 0.000000, 0.100000, 0.776680, 2*Pi};
//+
MeshSize {9} = 0.077668;
//+
MeshSize {10} = 0.077668;
//+
Cylinder(3) = {9.520078, 1.968435, 0.000000, 0.000000, 0.000000, 0.100000, 1.051680, 2*Pi};
//+
MeshSize {11} = 0.105168;
//+
MeshSize {12} = 0.105168;
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
Save "../msh/cad_019.msh2";
//+
Save "../mesh/cad_019.mesh";
//+
Save "../geo_unrolled/cad_019.geo_unrolled";
