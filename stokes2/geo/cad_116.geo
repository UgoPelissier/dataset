//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.014860, -3.364730, 0.000000, 32.364456, 8.309429, 0.000000};
//+
l = [3.2644781508147602, 1.529321645049808, 1.4641031118331036, 1.6289050885845484];
//+
MeshSize {1} = 3.264478;
//+
MeshSize {2} = 1.529322;
//+
MeshSize {3} = 1.464103;
//+
MeshSize {4} = 1.628905;
//+
Disk(2) = {17.034290, 2.041338, 0.000000, 0.976246, 0.976246};
//+
c0 = 0.09762459654232503;
//+
MeshSize {5} = c0;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
