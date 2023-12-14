//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.537036, -3.924747, 0.000000, 31.674945, 8.033385, 1.000000};
//+
MeshSize {1} = 1.367737;
//+
MeshSize {2} = 1.367737;
//+
MeshSize {3} = 1.772371;
//+
MeshSize {4} = 1.772371;
//+
MeshSize {5} = 0.847685;
//+
MeshSize {6} = 0.847685;
//+
MeshSize {7} = 0.832102;
//+
MeshSize {8} = 0.832102;
//+
Cylinder(2) = {10.690625, -1.118265, 0.000000, 0.000000, 0.000000, 0.100000, 0.718445, 2*Pi};
//+
MeshSize {9} = 0.071845;
//+
MeshSize {10} = 0.071845;
//+
Cylinder(3) = {24.244531, 0.245009, 0.000000, 0.000000, 0.000000, 0.100000, 1.496631, 2*Pi};
//+
MeshSize {11} = 0.149663;
//+
MeshSize {12} = 0.149663;
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
Save "../msh/cad_247.msh2";
//+
Save "../mesh/cad_247.mesh";
//+
Save "../geo_unrolled/cad_247.geo_unrolled";
