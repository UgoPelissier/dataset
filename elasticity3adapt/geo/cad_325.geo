//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.757777, -4.915898, 0.000000, 38.513255, 9.964069, 1.000000};
//+
MeshSize {1} = 2.728465;
//+
MeshSize {2} = 2.728465;
//+
MeshSize {3} = 3.500368;
//+
MeshSize {4} = 3.500368;
//+
MeshSize {5} = 0.532406;
//+
MeshSize {6} = 0.532406;
//+
MeshSize {7} = 0.551894;
//+
MeshSize {8} = 0.551894;
//+
Cylinder(2) = {34.053051, -0.100210, 0.000000, 0.000000, 0.000000, 0.100000, 0.824896, 2*Pi};
//+
MeshSize {9} = 0.082490;
//+
MeshSize {10} = 0.082490;
//+
Cylinder(3) = {17.968262, -2.523063, 0.000000, 0.000000, 0.000000, 0.100000, 0.904867, 2*Pi};
//+
MeshSize {11} = 0.090487;
//+
MeshSize {12} = 0.090487;
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
Save "../msh/cad_325.msh2";
//+
Save "../mesh/cad_325.mesh";
//+
Save "../geo_unrolled/cad_325.geo_unrolled";
