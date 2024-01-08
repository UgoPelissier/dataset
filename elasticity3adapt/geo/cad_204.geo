//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.226242, -4.421732, 0.000000, 30.390151, 9.380588, 1.000000};
//+
MeshSize {1} = 1.257260;
//+
MeshSize {2} = 1.257260;
//+
MeshSize {3} = 1.243248;
//+
MeshSize {4} = 1.243248;
//+
MeshSize {5} = 0.955558;
//+
MeshSize {6} = 0.955558;
//+
MeshSize {7} = 0.889869;
//+
MeshSize {8} = 0.889869;
//+
Cylinder(2) = {12.817004, 0.333146, 0.000000, 0.000000, 0.000000, 0.100000, 1.366894, 2*Pi};
//+
MeshSize {9} = 0.136689;
//+
MeshSize {10} = 0.136689;
//+
Cylinder(3) = {20.743675, 1.128233, 0.000000, 0.000000, 0.000000, 0.100000, 0.620282, 2*Pi};
//+
MeshSize {11} = 0.062028;
//+
MeshSize {12} = 0.062028;
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
Save "../msh/cad_204.msh2";
//+
Save "../mesh/cad_204.mesh";
//+
Save "../geo_unrolled/cad_204.geo_unrolled";
