//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.048919, -3.647645, 0.000000, 36.483850, 7.591803, 0.000000};
//+
l = [3.672944406987325, 3.672944406987325, 0.5919910255129611, 0.5919910255129611, 0.4635149417501624, 0.4635149417501624, 3.672944406987325, 3.672944406987325];
//+
MeshSize {1} = 3.672944;
//+
MeshSize {2} = 3.672944;
//+
MeshSize {3} = 0.591991;
//+
MeshSize {4} = 0.591991;
//+
Disk(2) = {31.192748, 1.267805, 0.000000, 1.338014, 1.338014};
//+
c0 = 0.1338014435792606;
//+
MeshSize {5} = c0;
//+
Disk(3) = {22.324801, 1.453934, 0.000000, 1.094969, 1.094969};
//+
c1 = 0.10949689863047196;
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
