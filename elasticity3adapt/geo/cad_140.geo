//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.017143, -3.944552, 0.000000, 36.723187, 9.515419, 0.100000};
//+
MeshSize {1} = 1.805051;
//+
MeshSize {2} = 1.805051;
//+
MeshSize {3} = 2.311763;
//+
MeshSize {4} = 2.311763;
//+
MeshSize {5} = 0.573976;
//+
MeshSize {6} = 0.573976;
//+
MeshSize {7} = 0.886195;
//+
MeshSize {8} = 0.886195;
//+
Cylinder(2) = {29.951245, -2.214003, 0.000000, 0.000000, 0.000000, 0.100000, 0.896896, 2*Pi};
//+
MeshSize {9} = 0.089690;
//+
MeshSize {10} = 0.089690;
//+
Cylinder(3) = {13.706038, -0.894189, 0.000000, 0.000000, 0.000000, 0.100000, 1.065002, 2*Pi};
//+
MeshSize {11} = 0.106500;
//+
MeshSize {12} = 0.106500;
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
Save "../msh/cad_140.msh2";
//+
Save "../mesh/cad_140.mesh";
//+
Save "../geo_unrolled/cad_140.geo_unrolled";
