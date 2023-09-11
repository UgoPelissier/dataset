//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.203597, -3.726427, 0.000000, 32.436242, 8.721330, 1.000000};
//+
l = [3.292984191642369, 3.292984191642369, 0.6826643818291167, 0.6826643818291167, 0.6826643818291167, 0.3075548777310312, 0.3075548777310312, 0.3075548777310312, 3.292984191642369, 3.292984191642369];
//+
MeshSize {1} = 3.292984;
//+
MeshSize {2} = 3.292984;
//+
MeshSize {3} = 0.682664;
//+
MeshSize {4} = 0.682664;
//+
MeshSize {5} = 0.682664;
//+
MeshSize {6} = 0.307555;
//+
MeshSize {7} = 0.307555;
//+
MeshSize {8} = 0.307555;
//+
Cylinder(2) = {29.550037, 3.018485, 0.000000, 0.000000, 0.000000, 1.000000, 0.592298, 2*Pi};
//+
c0 = 0.059229846771273346;
//+
MeshSize {9, 10} = c0;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
