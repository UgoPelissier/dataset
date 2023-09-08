//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.188163, -3.686867, 0.000000, 37.054889, 8.897126, 0.000000};
//+
l = [1.8159766537051647, 3.750779473085887, 1.8651113340232202, 1.6937330838033244];
//+
MeshSize {1} = 1.815977;
//+
MeshSize {2} = 3.750779;
//+
MeshSize {3} = 1.865111;
//+
MeshSize {4} = 1.693733;
//+
Disk(2) = {17.854104, 3.287255, 0.000000, 0.832964, 0.832964};
//+
c0 = 0.08329643108188213;
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
