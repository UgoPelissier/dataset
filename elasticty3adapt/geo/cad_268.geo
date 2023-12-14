//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.370377, -3.993420, 0.000000, 34.927788, 8.073716, 1.000000};
//+
MeshSize {1} = 3.231495;
//+
MeshSize {2} = 3.231495;
//+
MeshSize {3} = 2.887796;
//+
MeshSize {4} = 2.887796;
//+
MeshSize {5} = 0.631148;
//+
MeshSize {6} = 0.631148;
//+
MeshSize {7} = 0.466381;
//+
MeshSize {8} = 0.466381;
//+
Cylinder(2) = {28.319725, 2.337789, 0.000000, 0.000000, 0.000000, 0.100000, 0.881236, 2*Pi};
//+
MeshSize {9} = 0.088124;
//+
MeshSize {10} = 0.088124;
//+
Cylinder(3) = {20.792317, 1.948947, 0.000000, 0.000000, 0.000000, 0.100000, 1.261539, 2*Pi};
//+
MeshSize {11} = 0.126154;
//+
MeshSize {12} = 0.126154;
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
Save "../msh/cad_268.msh2";
//+
Save "../mesh/cad_268.mesh";
//+
Save "../geo_unrolled/cad_268.geo_unrolled";
