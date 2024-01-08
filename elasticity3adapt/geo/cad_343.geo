//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.443774, -4.350133, 0.000000, 34.382858, 8.750136, 1.000000};
//+
MeshSize {1} = 0.986120;
//+
MeshSize {2} = 0.986120;
//+
MeshSize {3} = 0.923866;
//+
MeshSize {4} = 0.923866;
//+
MeshSize {5} = 1.269569;
//+
MeshSize {6} = 1.269569;
//+
MeshSize {7} = 1.021771;
//+
MeshSize {8} = 1.021771;
//+
Cylinder(2) = {18.236198, 2.410953, 0.000000, 0.000000, 0.000000, 0.100000, 0.643295, 2*Pi};
//+
MeshSize {9} = 0.064330;
//+
MeshSize {10} = 0.064330;
//+
Cylinder(3) = {15.998255, 1.869706, 0.000000, 0.000000, 0.000000, 0.100000, 1.022345, 2*Pi};
//+
MeshSize {11} = 0.102234;
//+
MeshSize {12} = 0.102234;
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
Save "../msh/cad_343.msh2";
//+
Save "../mesh/cad_343.mesh";
//+
Save "../geo_unrolled/cad_343.geo_unrolled";
