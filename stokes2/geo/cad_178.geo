//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.611948, -4.913278, 0.000000, 32.480959, 9.998988, 0.000000};
//+
l = [3.3468424576269165, 0.9374363434621741, 0.9212759537092516, 3.3468424576269165];
//+
MeshSize {1} = 3.346842;
//+
MeshSize {2} = 0.937436;
//+
MeshSize {3} = 0.921276;
//+
MeshSize {4} = 3.346842;
//+
Disk(2) = {23.789487, 0.256931, 0.000000, 1.269165, 1.269165};
//+
c0 = 0.12691645503746982;
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
