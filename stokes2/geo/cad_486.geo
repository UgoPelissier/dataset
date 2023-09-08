//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.591042, -3.553629, 0.000000, 30.472270, 8.742859, 0.000000};
//+
l = [1.2638284973987148, 1.2638284973987148, 3.136939188624092, 0.8715746862995899, 3.136939188624092, 1.0567345943339739, 1.1404385050271253, 1.1404385050271253];
//+
MeshSize {1} = 1.263828;
//+
MeshSize {2} = 1.263828;
//+
MeshSize {3} = 3.136939;
//+
MeshSize {4} = 0.871575;
//+
Disk(2) = {13.239540, 2.723584, 0.000000, 1.482193, 1.482193};
//+
c0 = 0.14821927527928977;
//+
MeshSize {5} = c0;
//+
Disk(3) = {21.073284, -1.536689, 0.000000, 1.475853, 1.475853};
//+
c1 = 0.14758532694286733;
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
