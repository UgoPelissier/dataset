//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.366970, -3.652870, 0.000000, 35.314526, 9.262206, 0.000000};
//+
l = [0.3869011824405948, 0.3869011824405948, 3.5980776221925583, 3.5980776221925583, 3.5980776221925583, 3.5980776221925583, 0.5657010257061532, 0.2553196552604887];
//+
MeshSize {1} = 0.386901;
//+
MeshSize {2} = 0.386901;
//+
MeshSize {3} = 3.598078;
//+
MeshSize {4} = 3.598078;
//+
Disk(2) = {4.037874, -0.171046, 0.000000, 1.190497, 1.190497};
//+
c0 = 0.11904972648625307;
//+
MeshSize {5} = c0;
//+
Disk(3) = {2.791528, 3.611478, 0.000000, 0.588446, 0.588446};
//+
c1 = 0.0588446350732679;
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
