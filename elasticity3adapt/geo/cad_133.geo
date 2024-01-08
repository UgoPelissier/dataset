//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.268462, -4.168354, 0.000000, 35.760759, 9.684051, 1.000000};
//+
MeshSize {1} = 0.728408;
//+
MeshSize {2} = 0.728408;
//+
MeshSize {3} = 0.532555;
//+
MeshSize {4} = 0.532555;
//+
MeshSize {5} = 2.442484;
//+
MeshSize {6} = 2.442484;
//+
MeshSize {7} = 2.699070;
//+
MeshSize {8} = 2.699070;
//+
Cylinder(2) = {6.779377, 2.534281, 0.000000, 0.000000, 0.000000, 0.100000, 1.224305, 2*Pi};
//+
MeshSize {9} = 0.122431;
//+
MeshSize {10} = 0.122431;
//+
Cylinder(3) = {20.134947, -0.199548, 0.000000, 0.000000, 0.000000, 0.100000, 1.369474, 2*Pi};
//+
MeshSize {11} = 0.136947;
//+
MeshSize {12} = 0.136947;
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
Save "../msh/cad_133.msh2";
//+
Save "../mesh/cad_133.mesh";
//+
Save "../geo_unrolled/cad_133.geo_unrolled";
