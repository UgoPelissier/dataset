//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.924154, -3.966160, 0.000000, 35.428829, 9.061304, 1.000000};
//+
l = [3.6634221657270873, 3.6634221657270873, 0.6459445803197963, 0.6459445803197963, 0.6459445803197963, 0.5665446453418518, 0.5665446453418518, 0.5665446453418518, 3.6634221657270873, 3.6634221657270873];
//+
MeshSize {1} = 3.663422;
//+
MeshSize {2} = 3.663422;
//+
MeshSize {3} = 0.645945;
//+
MeshSize {4} = 0.645945;
//+
MeshSize {5} = 0.645945;
//+
MeshSize {6} = 0.566545;
//+
MeshSize {7} = 0.566545;
//+
MeshSize {8} = 0.566545;
//+
Cylinder(2) = {31.417952, 1.152756, 0.000000, 0.000000, 0.000000, 1.000000, 0.650957, 2*Pi};
//+
c0 = 0.06509574013930769;
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
