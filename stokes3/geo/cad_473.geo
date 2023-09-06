//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.862014, -3.588490, 0.000000, 29.982001, 7.862676, 1.000000};
//+
l = 1.0;
//+
Cylinder(2) = {13.577073, 1.081705, 0.000000, 0.000000, 0.000000, 1.000000, 0.710857, 2*Pi};
//+
c0 = 0.0710857;
//+
Cylinder(3) = {22.650645, -1.218119, 0.000000, 0.000000, 0.000000, 1.000000, 1.142261, 2*Pi};
//+
c1 = 0.1142261;
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
Mesh 1;
//+
RefineMesh;
//+
RefineMesh;
//+
Mesh 3;
//+
Save "cad_473.msh";
