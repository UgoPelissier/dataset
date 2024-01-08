//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.655401, -3.275738, 0.000000, 31.938862, 8.546414, 1.000000};
//+
MeshSize {1} = 1.505642;
//+
MeshSize {2} = 1.505642;
//+
MeshSize {3} = 2.129404;
//+
MeshSize {4} = 2.129404;
//+
MeshSize {5} = 0.854373;
//+
MeshSize {6} = 0.854373;
//+
MeshSize {7} = 0.712951;
//+
MeshSize {8} = 0.712951;
//+
Cylinder(2) = {7.247764, 0.296006, 0.000000, 0.000000, 0.000000, 0.100000, 1.284897, 2*Pi};
//+
MeshSize {9} = 0.128490;
//+
MeshSize {10} = 0.128490;
//+
Cylinder(3) = {29.547563, 1.468859, 0.000000, 0.000000, 0.000000, 0.100000, 1.007315, 2*Pi};
//+
MeshSize {11} = 0.100731;
//+
MeshSize {12} = 0.100731;
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
Save "../msh/cad_215.msh2";
//+
Save "../mesh/cad_215.mesh";
//+
Save "../geo_unrolled/cad_215.geo_unrolled";
