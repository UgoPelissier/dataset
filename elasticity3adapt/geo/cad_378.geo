//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.591042, -3.553629, 0.000000, 30.472270, 8.742859, 0.100000};
//+
MeshSize {1} = 1.588568;
//+
MeshSize {2} = 1.588568;
//+
MeshSize {3} = 1.167231;
//+
MeshSize {4} = 1.167231;
//+
MeshSize {5} = 0.804671;
//+
MeshSize {6} = 0.804671;
//+
MeshSize {7} = 0.975618;
//+
MeshSize {8} = 0.975618;
//+
Cylinder(2) = {13.239540, 2.723584, 0.000000, 0.000000, 0.000000, 0.100000, 1.482193, 2*Pi};
//+
MeshSize {9} = 0.148219;
//+
MeshSize {10} = 0.148219;
//+
Cylinder(3) = {21.073284, -1.536689, 0.000000, 0.000000, 0.000000, 0.100000, 1.475853, 2*Pi};
//+
MeshSize {11} = 0.147585;
//+
MeshSize {12} = 0.147585;
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
Save "../msh/cad_378.msh2";
//+
Save "../mesh/cad_378.mesh";
//+
Save "../geo_unrolled/cad_378.geo_unrolled";
