//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.268537, -3.644073, 0.000000, 33.109015, 8.944834, 1.000000};
//+
MeshSize {1} = 2.625193;
//+
MeshSize {2} = 2.625193;
//+
MeshSize {3} = 2.824607;
//+
MeshSize {4} = 2.824607;
//+
MeshSize {5} = 0.556046;
//+
MeshSize {6} = 0.556046;
//+
MeshSize {7} = 0.650882;
//+
MeshSize {8} = 0.650882;
//+
Cylinder(2) = {18.896437, -0.131150, 0.000000, 0.000000, 0.000000, 1.000000, 0.843740, 2*Pi};
//+
MeshSize {9} = 0.084374;
//+
MeshSize {10} = 0.084374;
//+
Cylinder(3) = {26.164321, -0.361534, 0.000000, 0.000000, 0.000000, 1.000000, 0.624237, 2*Pi};
//+
MeshSize {11} = 0.062424;
//+
MeshSize {12} = 0.062424;
//+
BooleanDifference{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("INFLOW", 1) = {1};
//+
Physical Surface("OUTFLOW", 2) = {6};
//+
Physical Surface("OBSTACLE", 4) = {7, 8};
//+
Physical Surface("WALL_Y", 31) = {2, 4};
//+
Physical Surface("WALL_Z", 32) = {3, 5};
//+
Physical Volume("FLUID", 5) = {1};
//+
Mesh 2;
//+
Save "../geo_unrolled/cad_167.geo_unrolled";
