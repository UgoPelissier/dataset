//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.361779, -3.943545, 0.000000, 35.892308, 9.399976, 0.000000};
//+
l = [0.685891530137069, 3.6557471788418336, 3.6557471788418336, 0.7185722991210206];
//+
MeshSize {1} = 0.685892;
//+
MeshSize {2} = 3.655747;
//+
MeshSize {3} = 3.655747;
//+
MeshSize {4} = 0.718572;
//+
Disk(2) = {7.379818, 0.462663, 0.000000, 1.427673, 1.427673};
//+
c0 = 0.14276727608444478;
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
