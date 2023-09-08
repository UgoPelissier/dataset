//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.921868, -4.321793, 0.000000, 37.871394, 9.660067, 0.000000};
//+
l = [1.1196067538612655, 3.909279274522655, 3.909279274522655, 0.9202907568450108];
//+
MeshSize {1} = 1.119607;
//+
MeshSize {2} = 3.909279;
//+
MeshSize {3} = 3.909279;
//+
MeshSize {4} = 0.920291;
//+
Disk(2) = {10.716538, 2.801479, 0.000000, 0.914942, 0.914942};
//+
c0 = 0.09149424235513452;
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
