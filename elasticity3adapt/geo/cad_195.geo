//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.917896, -4.444708, 0.000000, 30.386999, 9.292344, 0.100000};
//+
MeshSize {1} = 3.401281;
//+
MeshSize {2} = 3.401281;
//+
MeshSize {3} = 4.489715;
//+
MeshSize {4} = 4.489715;
//+
MeshSize {5} = 0.648537;
//+
MeshSize {6} = 0.648537;
//+
MeshSize {7} = 0.197875;
//+
MeshSize {8} = 0.197875;
//+
Cylinder(2) = {28.762336, 3.199206, 0.000000, 0.000000, 0.000000, 0.100000, 0.823589, 2*Pi};
//+
MeshSize {9} = 0.082359;
//+
MeshSize {10} = 0.082359;
//+
Cylinder(3) = {18.437023, -3.016744, 0.000000, 0.000000, 0.000000, 0.100000, 0.806823, 2*Pi};
//+
MeshSize {11} = 0.080682;
//+
MeshSize {12} = 0.080682;
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
Save "../msh/cad_195.msh2";
//+
Save "../mesh/cad_195.mesh";
//+
Save "../geo_unrolled/cad_195.geo_unrolled";
