//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.815749, -4.606515, 0.000000, 35.922315, 9.949745, 1.000000};
//+
MeshSize {1} = 0.647239;
//+
MeshSize {2} = 0.647239;
//+
MeshSize {3} = 0.531996;
//+
MeshSize {4} = 0.531996;
//+
MeshSize {5} = 3.271198;
//+
MeshSize {6} = 3.271198;
//+
MeshSize {7} = 2.386249;
//+
MeshSize {8} = 2.386249;
//+
Cylinder(2) = {21.444087, 2.952635, 0.000000, 0.000000, 0.000000, 0.100000, 1.225324, 2*Pi};
//+
MeshSize {9} = 0.122532;
//+
MeshSize {10} = 0.122532;
//+
Cylinder(3) = {6.264283, 1.283768, 0.000000, 0.000000, 0.000000, 0.100000, 1.119736, 2*Pi};
//+
MeshSize {11} = 0.111974;
//+
MeshSize {12} = 0.111974;
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
Save "../msh/cad_114.msh2";
//+
Save "../mesh/cad_114.mesh";
//+
Save "../geo_unrolled/cad_114.geo_unrolled";
