//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.520688, -4.334692, 0.000000, 32.411007, 9.923937, 0.000000};
//+
l = 1.0;
//+
MeshSize {1} = 1.000000;
//+
MeshSize {2} = 1.000000;
//+
MeshSize {3} = 1.000000;
//+
MeshSize {4} = 1.000000;
//+
Disk(2) = {14.617064, 1.435839, 0.000000, 0.791517, 0.791517};
//+
c0 = 0.07915167971630443;
//+
MeshSize {5} = c0;
//+
Disk(3) = {2.073034, 3.689657, 0.000000, 0.732328, 0.732328};
//+
c1 = 0.07323280635099673;
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
//+
Save "../geo_unrolled/cad_395.geo_unrolled";
