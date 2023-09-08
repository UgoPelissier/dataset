//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.802168, -3.932548, 0.000000, 39.091868, 9.454789, 0.000000};
//+
l = [1.3223004027127234, 1.3223004027127234, 4.017315498782254, 0.43822305776746795, 4.017315498782254, 0.5621739786028608, 1.3469707883791633, 1.3469707883791633];
//+
MeshSize {1} = 1.322300;
//+
MeshSize {2} = 1.322300;
//+
MeshSize {3} = 4.017315;
//+
MeshSize {4} = 0.438223;
//+
Disk(2) = {14.326431, 0.420906, 0.000000, 0.984679, 0.984679};
//+
c0 = 0.09846794854405083;
//+
MeshSize {5} = c0;
//+
Disk(3) = {36.410370, 0.022628, 0.000000, 0.888381, 0.888381};
//+
c1 = 0.08883812745693004;
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
