//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.041826, -3.405790, 0.000000, 33.761915, 8.282244, 0.000000};
//+
l = [3.4056450818800488, 1.6486344125053158, 1.3110979985754616, 1.3110979985754616, 1.2348362780375135, 1.2348362780375135, 3.4056450818800488, 1.7006967021670663];
//+
MeshSize {1} = 3.405645;
//+
MeshSize {2} = 1.648634;
//+
MeshSize {3} = 1.311098;
//+
MeshSize {4} = 1.311098;
//+
Disk(2) = {20.671153, 2.008178, 0.000000, 1.093806, 1.093806};
//+
c0 = 0.10938058013927893;
//+
MeshSize {5} = c0;
//+
Disk(3) = {17.599887, -0.400781, 0.000000, 1.327010, 1.327010};
//+
c1 = 0.132701010165935;
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
