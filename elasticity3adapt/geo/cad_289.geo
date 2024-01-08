//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.969542, -3.799357, 0.000000, 30.800824, 8.993960, 0.100000};
//+
MeshSize {1} = 1.558080;
//+
MeshSize {2} = 1.558080;
//+
MeshSize {3} = 1.468027;
//+
MeshSize {4} = 1.468027;
//+
MeshSize {5} = 0.865990;
//+
MeshSize {6} = 0.865990;
//+
MeshSize {7} = 0.838186;
//+
MeshSize {8} = 0.838186;
//+
Cylinder(2) = {20.048611, 1.221840, 0.000000, 0.000000, 0.000000, 0.100000, 1.063984, 2*Pi};
//+
MeshSize {9} = 0.106398;
//+
MeshSize {10} = 0.106398;
//+
Cylinder(3) = {16.630510, 1.254912, 0.000000, 0.000000, 0.000000, 0.100000, 0.809661, 2*Pi};
//+
MeshSize {11} = 0.080966;
//+
MeshSize {12} = 0.080966;
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
Save "../msh/cad_289.msh2";
//+
Save "../mesh/cad_289.mesh";
//+
Save "../geo_unrolled/cad_289.geo_unrolled";
