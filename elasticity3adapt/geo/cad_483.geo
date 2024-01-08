//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.317382, -3.616989, 0.000000, 30.829064, 7.748334, 0.100000};
//+
MeshSize {1} = 0.161743;
//+
MeshSize {2} = 0.161743;
//+
MeshSize {3} = 0.350538;
//+
MeshSize {4} = 0.350538;
//+
MeshSize {5} = 5.361891;
//+
MeshSize {6} = 5.361891;
//+
MeshSize {7} = 5.244860;
//+
MeshSize {8} = 5.244860;
//+
Cylinder(2) = {2.791611, -1.497023, 0.000000, 0.000000, 0.000000, 0.100000, 0.907276, 2*Pi};
//+
MeshSize {9} = 0.090728;
//+
MeshSize {10} = 0.090728;
//+
Cylinder(3) = {5.269700, 0.886994, 0.000000, 0.000000, 0.000000, 0.100000, 0.825291, 2*Pi};
//+
MeshSize {11} = 0.082529;
//+
MeshSize {12} = 0.082529;
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
Save "../msh/cad_483.msh2";
//+
Save "../mesh/cad_483.mesh";
//+
Save "../geo_unrolled/cad_483.geo_unrolled";
