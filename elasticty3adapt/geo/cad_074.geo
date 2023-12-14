//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.429914, -4.075044, 0.000000, 36.354949, 8.716582, 1.000000};
//+
MeshSize {1} = 0.333227;
//+
MeshSize {2} = 0.333227;
//+
MeshSize {3} = 0.128027;
//+
MeshSize {4} = 0.128027;
//+
MeshSize {5} = 5.433583;
//+
MeshSize {6} = 5.433583;
//+
MeshSize {7} = 5.646466;
//+
MeshSize {8} = 5.646466;
//+
Cylinder(2) = {6.462909, -1.044182, 0.000000, 0.000000, 0.000000, 0.100000, 1.203671, 2*Pi};
//+
MeshSize {9} = 0.120367;
//+
MeshSize {10} = 0.120367;
//+
Cylinder(3) = {2.651287, 3.153349, 0.000000, 0.000000, 0.000000, 0.100000, 0.542302, 2*Pi};
//+
MeshSize {11} = 0.054230;
//+
MeshSize {12} = 0.054230;
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
Save "../msh/cad_074.msh2";
//+
Save "../mesh/cad_074.mesh";
//+
Save "../geo_unrolled/cad_074.geo_unrolled";
