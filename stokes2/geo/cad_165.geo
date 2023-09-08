//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.695389, -3.197140, 0.000000, 37.419588, 7.657751, 0.000000};
//+
l = [3.8306810710096535, 0.8207883353404954, 0.8987286309803357, 3.8306810710096535];
//+
MeshSize {1} = 3.830681;
//+
MeshSize {2} = 0.820788;
//+
MeshSize {3} = 0.898729;
//+
MeshSize {4} = 3.830681;
//+
Disk(2) = {29.584479, -0.324079, 0.000000, 0.793443, 0.793443};
//+
c0 = 0.07934425711750313;
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
