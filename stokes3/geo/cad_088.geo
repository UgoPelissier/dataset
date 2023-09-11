//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.921868, -4.321793, 0.000000, 37.871394, 9.660067, 1.000000};
//+
l = [1.1196067538612655, 1.1196067538612655, 1.1196067538612655, 3.909279274522655, 3.909279274522655, 3.909279274522655, 3.909279274522655, 0.9202907568450108, 0.9202907568450108, 0.9202907568450108];
//+
MeshSize {1} = 1.119607;
//+
MeshSize {2} = 1.119607;
//+
MeshSize {3} = 1.119607;
//+
MeshSize {4} = 3.909279;
//+
MeshSize {5} = 3.909279;
//+
MeshSize {6} = 3.909279;
//+
MeshSize {7} = 3.909279;
//+
MeshSize {8} = 0.920291;
//+
Cylinder(2) = {10.716538, 2.801479, 0.000000, 0.000000, 0.000000, 1.000000, 0.914942, 2*Pi};
//+
c0 = 0.09149424235513452;
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
