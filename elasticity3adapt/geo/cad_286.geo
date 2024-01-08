//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.161999, -3.885978, 0.000000, 33.006783, 8.228391, 0.100000};
//+
MeshSize {1} = 0.150705;
//+
MeshSize {2} = 0.150705;
//+
MeshSize {3} = 0.486128;
//+
MeshSize {4} = 0.486128;
//+
MeshSize {5} = 4.851527;
//+
MeshSize {6} = 4.851527;
//+
MeshSize {7} = 4.659867;
//+
MeshSize {8} = 4.659867;
//+
Cylinder(2) = {8.871734, 1.190190, 0.000000, 0.000000, 0.000000, 0.100000, 0.771248, 2*Pi};
//+
MeshSize {9} = 0.077125;
//+
MeshSize {10} = 0.077125;
//+
Cylinder(3) = {2.655650, -2.740791, 0.000000, 0.000000, 0.000000, 0.100000, 0.603009, 2*Pi};
//+
MeshSize {11} = 0.060301;
//+
MeshSize {12} = 0.060301;
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
Save "../msh/cad_286.msh2";
//+
Save "../mesh/cad_286.mesh";
//+
Save "../geo_unrolled/cad_286.geo_unrolled";
