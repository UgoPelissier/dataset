//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.072920, -3.736008, 0.000000, 32.433044, 8.614705, 0.000000};
//+
l = [3.2790104442594465, 1.4331314018615282, 0.4830207286859615, 0.4830207286859615, 0.3324348019640436, 0.3324348019640436, 3.2790104442594465, 1.295002827590991];
//+
MeshSize {1} = 3.279010;
//+
MeshSize {2} = 1.433131;
//+
MeshSize {3} = 0.483021;
//+
MeshSize {4} = 0.483021;
//+
Disk(2) = {30.324609, 1.418031, 0.000000, 0.766436, 0.766436};
//+
c0 = 0.07664364811152777;
//+
MeshSize {5} = c0;
//+
Disk(3) = {14.174475, 2.963882, 0.000000, 1.280937, 1.280937};
//+
c1 = 0.12809370369633707;
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
