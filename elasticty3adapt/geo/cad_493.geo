//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.937890, -3.173862, 0.000000, 38.492852, 7.629657, 1.000000};
//+
MeshSize {1} = 3.789344;
//+
MeshSize {2} = 3.789344;
//+
MeshSize {3} = 3.214716;
//+
MeshSize {4} = 3.214716;
//+
MeshSize {5} = 0.330256;
//+
MeshSize {6} = 0.330256;
//+
MeshSize {7} = 0.634845;
//+
MeshSize {8} = 0.634845;
//+
Cylinder(2) = {37.015977, -0.514634, 0.000000, 0.000000, 0.000000, 0.100000, 1.495106, 2*Pi};
//+
MeshSize {9} = 0.149511;
//+
MeshSize {10} = 0.149511;
//+
Cylinder(3) = {10.805427, 1.374662, 0.000000, 0.000000, 0.000000, 0.100000, 0.966587, 2*Pi};
//+
MeshSize {11} = 0.096659;
//+
MeshSize {12} = 0.096659;
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
Save "../msh/cad_493.msh2";
//+
Save "../mesh/cad_493.mesh";
//+
Save "../geo_unrolled/cad_493.geo_unrolled";
