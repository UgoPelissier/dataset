//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.179797, -3.803142, 0.000000, 35.340703, 8.625114, 0.100000};
//+
MeshSize {1} = 1.147085;
//+
MeshSize {2} = 1.147085;
//+
MeshSize {3} = 1.275258;
//+
MeshSize {4} = 1.275258;
//+
MeshSize {5} = 0.976507;
//+
MeshSize {6} = 0.976507;
//+
MeshSize {7} = 0.892265;
//+
MeshSize {8} = 0.892265;
//+
Cylinder(2) = {20.528665, 2.991223, 0.000000, 0.000000, 0.000000, 0.100000, 0.736750, 2*Pi};
//+
MeshSize {9} = 0.073675;
//+
MeshSize {10} = 0.073675;
//+
Cylinder(3) = {17.821658, -0.769034, 0.000000, 0.000000, 0.000000, 0.100000, 1.046166, 2*Pi};
//+
MeshSize {11} = 0.104617;
//+
MeshSize {12} = 0.104617;
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
Save "../msh/cad_359.msh2";
//+
Save "../mesh/cad_359.mesh";
//+
Save "../geo_unrolled/cad_359.geo_unrolled";
