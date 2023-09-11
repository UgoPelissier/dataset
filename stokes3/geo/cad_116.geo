//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.014860, -3.364730, 0.000000, 32.364456, 8.309429, 1.000000};
//+
l = [3.2644781508147602, 3.2644781508147602, 1.529321645049808, 1.529321645049808, 1.529321645049808, 1.4641031118331036, 1.4641031118331036, 1.4641031118331036, 1.6289050885845484, 1.6289050885845484, 1.6289050885845484];
//+
MeshSize {1} = 3.264478;
//+
MeshSize {2} = 3.264478;
//+
MeshSize {3} = 1.529322;
//+
MeshSize {4} = 1.529322;
//+
MeshSize {5} = 1.529322;
//+
MeshSize {6} = 1.464103;
//+
MeshSize {7} = 1.464103;
//+
MeshSize {8} = 1.464103;
//+
Cylinder(2) = {17.034290, 2.041338, 0.000000, 0.000000, 0.000000, 1.000000, 0.976246, 2*Pi};
//+
c0 = 0.09762459654232503;
//+
MeshSize {9, 10} = c0;
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
