//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.940904, -3.168331, 0.000000, 37.518433, 8.126513, 1.000000};
//+
MeshSize {1} = 0.837572;
//+
MeshSize {2} = 0.837572;
//+
MeshSize {3} = 0.873674;
//+
MeshSize {4} = 0.873674;
//+
MeshSize {5} = 1.456066;
//+
MeshSize {6} = 1.456066;
//+
MeshSize {7} = 1.542109;
//+
MeshSize {8} = 1.542109;
//+
Cylinder(2) = {24.423875, 0.413163, 0.000000, 0.000000, 0.000000, 0.100000, 0.625170, 2*Pi};
//+
MeshSize {9} = 0.062517;
//+
MeshSize {10} = 0.062517;
//+
Cylinder(3) = {11.646434, 0.272060, 0.000000, 0.000000, 0.000000, 0.100000, 1.002573, 2*Pi};
//+
MeshSize {11} = 0.100257;
//+
MeshSize {12} = 0.100257;
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
Save "../msh/cad_104.msh2";
//+
Save "../mesh/cad_104.mesh";
//+
Save "../geo_unrolled/cad_104.geo_unrolled";
