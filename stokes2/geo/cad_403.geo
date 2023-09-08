//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.470147, -4.579371, 0.000000, 37.945246, 9.543127, 0.000000};
//+
l = [1.0636070896414729, 1.0636070896414729, 3.871059580278746, 0.8530430903170997, 3.871059580278746, 0.8521333072224997, 0.8456003812996239, 0.8456003812996239];
//+
MeshSize {1} = 1.063607;
//+
MeshSize {2} = 1.063607;
//+
MeshSize {3} = 3.871060;
//+
MeshSize {4} = 0.853043;
//+
Disk(2) = {9.563987, 2.588338, 0.000000, 0.942961, 0.942961};
//+
c0 = 0.09429609421429201;
//+
MeshSize {5} = c0;
//+
Disk(3) = {29.618113, 0.201733, 0.000000, 1.482116, 1.482116};
//+
c1 = 0.1482115851405614;
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
