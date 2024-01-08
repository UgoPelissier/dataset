//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.133146, -3.420195, 0.000000, 31.295384, 8.826271, 0.100000};
//+
MeshSize {1} = 1.577481;
//+
MeshSize {2} = 1.577481;
//+
MeshSize {3} = 1.420733;
//+
MeshSize {4} = 1.420733;
//+
MeshSize {5} = 0.861683;
//+
MeshSize {6} = 0.861683;
//+
MeshSize {7} = 0.850039;
//+
MeshSize {8} = 0.850039;
//+
Cylinder(2) = {22.704977, 1.130469, 0.000000, 0.000000, 0.000000, 0.100000, 0.651374, 2*Pi};
//+
MeshSize {9} = 0.065137;
//+
MeshSize {10} = 0.065137;
//+
Cylinder(3) = {12.939437, 1.646684, 0.000000, 0.000000, 0.000000, 0.100000, 1.359963, 2*Pi};
//+
MeshSize {11} = 0.135996;
//+
MeshSize {12} = 0.135996;
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
Save "../msh/cad_171.msh2";
//+
Save "../mesh/cad_171.mesh";
//+
Save "../geo_unrolled/cad_171.geo_unrolled";
