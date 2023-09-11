//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.934248, -3.595811, 0.000000, 37.271246, 8.207097, 1.000000};
//+
MeshSize {1} = 0.982531;
//+
MeshSize {2} = 0.982531;
//+
MeshSize {3} = 0.982531;
//+
MeshSize {4} = 3.842524;
//+
MeshSize {5} = 3.842524;
//+
MeshSize {6} = 3.842524;
//+
MeshSize {7} = 3.842524;
//+
MeshSize {8} = 0.967518;
//+
Cylinder(2) = {11.406474, 0.713506, 0.000000, 0.000000, 0.000000, 1.000000, 1.498902, 2*Pi};
//+
MeshSize {9} = 0.149890;
//+
MeshSize {10} = 0.149890;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
