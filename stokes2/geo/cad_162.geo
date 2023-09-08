//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.664371, -3.748985, 0.000000, 39.082174, 7.669198, 0.000000};
//+
l = [1.9110849174939641, 1.7729649801942902, 1.7741385234340326, 1.9121798165771768];
//+
MeshSize {1} = 1.911085;
//+
MeshSize {2} = 1.772965;
//+
MeshSize {3} = 1.774139;
//+
MeshSize {4} = 1.912180;
//+
Disk(2) = {20.909045, 0.056198, 0.000000, 1.488331, 1.488331};
//+
c0 = 0.14883314855964677;
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
