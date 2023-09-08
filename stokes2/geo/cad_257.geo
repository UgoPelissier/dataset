//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.633336, -4.402024, 0.000000, 35.953294, 9.288091, 0.000000};
//+
l = [1.6248344738155636, 1.6248344738155636, 1.836175929061569, 0.57906866254823, 3.6880192925688813, 0.3213935895533329, 1.6863591636295898, 1.6863591636295898];
//+
MeshSize {1} = 1.624834;
//+
MeshSize {2} = 1.624834;
//+
MeshSize {3} = 1.836176;
//+
MeshSize {4} = 0.579069;
//+
Disk(2) = {17.533582, -0.921331, 0.000000, 1.006613, 1.006613};
//+
c0 = 0.10066126430295091;
//+
MeshSize {5} = c0;
//+
Disk(3) = {33.674048, 1.780609, 0.000000, 1.043645, 1.043645};
//+
c1 = 0.10436452033874777;
//+
MeshSize {6} = c1;
//+
BooleanDifference{ Surface{1}; Delete; }{ Surface{2}; Surface{3}; Delete; }
//+
Physical Curve("INFLOW", 1) = {2};
//+
Physical Curve("OUTFLOW", 2) = {3};
//+
Physical Curve("WALL_BOUNDARY", 3) = {1, 4};
//+
Physical Curve("OBSTACLE", 4) = {5, 6};
//+
Physical Surface("FLUID", 5) = {1};
//+
Mesh 2;
