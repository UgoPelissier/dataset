//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.054547, -4.270397, 0.000000, 31.367850, 9.574734, 0.000000};
//+
l = [1.4907657019779277, 0.44775845849243895, 3.1784994318527264, 3.1784994318527264, 3.1784994318527264, 3.1784994318527264, 1.3877283563113003, 0.6479926839068266];
//+
MeshSize {1} = 1.490766;
//+
MeshSize {2} = 0.447758;
//+
MeshSize {3} = 3.178499;
//+
MeshSize {4} = 3.178499;
//+
Disk(2) = {14.193436, 2.131784, 0.000000, 0.613172, 0.613172};
//+
c0 = 0.061317158624359505;
//+
MeshSize {5} = c0;
//+
Disk(3) = {4.251660, -0.827647, 0.000000, 0.950886, 0.950886};
//+
c1 = 0.09508858548470744;
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
