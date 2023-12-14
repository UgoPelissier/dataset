//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.652037, -4.029483, 0.000000, 38.224712, 9.453908, 1.000000};
//+
MeshSize {1} = 0.708867;
//+
MeshSize {2} = 0.708867;
//+
MeshSize {3} = 0.579282;
//+
MeshSize {4} = 0.579282;
//+
MeshSize {5} = 2.667584;
//+
MeshSize {6} = 2.667584;
//+
MeshSize {7} = 2.326042;
//+
MeshSize {8} = 2.326042;
//+
Cylinder(2) = {20.267844, 2.430092, 0.000000, 0.000000, 0.000000, 0.100000, 0.660027, 2*Pi};
//+
MeshSize {9} = 0.066003;
//+
MeshSize {10} = 0.066003;
//+
Cylinder(3) = {9.382506, 2.591862, 0.000000, 0.000000, 0.000000, 0.100000, 1.226509, 2*Pi};
//+
MeshSize {11} = 0.122651;
//+
MeshSize {12} = 0.122651;
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
Save "../msh/cad_470.msh2";
//+
Save "../mesh/cad_470.mesh";
//+
Save "../geo_unrolled/cad_470.geo_unrolled";
