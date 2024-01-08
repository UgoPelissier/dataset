//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.663424, -3.813015, 0.000000, 36.979018, 8.853685, 0.100000};
//+
MeshSize {1} = 3.552328;
//+
MeshSize {2} = 3.552328;
//+
MeshSize {3} = 3.632101;
//+
MeshSize {4} = 3.632101;
//+
MeshSize {5} = 0.426582;
//+
MeshSize {6} = 0.426582;
//+
MeshSize {7} = 0.510434;
//+
MeshSize {8} = 0.510434;
//+
Cylinder(2) = {32.702581, -0.081407, 0.000000, 0.000000, 0.000000, 0.100000, 1.484395, 2*Pi};
//+
MeshSize {9} = 0.148439;
//+
MeshSize {10} = 0.148439;
//+
Cylinder(3) = {18.005136, 0.360947, 0.000000, 0.000000, 0.000000, 0.100000, 1.002475, 2*Pi};
//+
MeshSize {11} = 0.100248;
//+
MeshSize {12} = 0.100248;
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
Save "../msh/cad_279.msh2";
//+
Save "../mesh/cad_279.mesh";
//+
Save "../geo_unrolled/cad_279.geo_unrolled";
