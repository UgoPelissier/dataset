//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.361472, -3.271664, 0.000000, 38.476553, 8.061371, 1.000000};
//+
MeshSize {1} = 1.371097;
//+
MeshSize {2} = 1.371097;
//+
MeshSize {3} = 1.836980;
//+
MeshSize {4} = 1.836980;
//+
MeshSize {5} = 0.831469;
//+
MeshSize {6} = 0.831469;
//+
MeshSize {7} = 0.832880;
//+
MeshSize {8} = 0.832880;
//+
Cylinder(2) = {10.794370, -0.644409, 0.000000, 0.000000, 0.000000, 0.100000, 0.948861, 2*Pi};
//+
MeshSize {9} = 0.094886;
//+
MeshSize {10} = 0.094886;
//+
Cylinder(3) = {31.383418, 0.745925, 0.000000, 0.000000, 0.000000, 0.100000, 1.126297, 2*Pi};
//+
MeshSize {11} = 0.112630;
//+
MeshSize {12} = 0.112630;
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
Save "../msh/cad_494.msh2";
//+
Save "../mesh/cad_494.mesh";
//+
Save "../geo_unrolled/cad_494.geo_unrolled";
