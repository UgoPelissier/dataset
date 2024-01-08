//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.498760, -4.623001, 0.000000, 29.733003, 9.863082, 0.100000};
//+
MeshSize {1} = 4.066062;
//+
MeshSize {2} = 4.066062;
//+
MeshSize {3} = 2.869917;
//+
MeshSize {4} = 2.869917;
//+
MeshSize {5} = 0.584582;
//+
MeshSize {6} = 0.584582;
//+
MeshSize {7} = 0.398230;
//+
MeshSize {8} = 0.398230;
//+
Cylinder(2) = {26.674678, 1.521479, 0.000000, 0.000000, 0.000000, 0.100000, 0.970587, 2*Pi};
//+
MeshSize {9} = 0.097059;
//+
MeshSize {10} = 0.097059;
//+
Cylinder(3) = {16.225108, 3.424190, 0.000000, 0.000000, 0.000000, 0.100000, 0.930928, 2*Pi};
//+
MeshSize {11} = 0.093093;
//+
MeshSize {12} = 0.093093;
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
Save "../msh/cad_110.msh2";
//+
Save "../mesh/cad_110.mesh";
//+
Save "../geo_unrolled/cad_110.geo_unrolled";
