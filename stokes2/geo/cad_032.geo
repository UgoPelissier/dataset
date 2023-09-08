//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.203597, -3.726427, 0.000000, 32.436242, 8.721330, 0.000000};
//+
l = [3.292984191642369, 0.6826643818291167, 0.3075548777310312, 3.292984191642369];
//+
MeshSize {1} = 3.292984;
//+
MeshSize {2} = 0.682664;
//+
MeshSize {3} = 0.307555;
//+
MeshSize {4} = 3.292984;
//+
Disk(2) = {29.550037, 3.018485, 0.000000, 0.592298, 0.592298};
//+
c0 = 0.059229846771273346;
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
