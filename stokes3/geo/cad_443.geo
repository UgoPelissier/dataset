//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Box(1) = {0.058752, -4.552421, 0.000000, 32.289662, 9.770566, 1.000000};
//+
MeshSize {1} = 3.271522;
//+
MeshSize {2} = 3.271522;
//+
MeshSize {3} = 1.420580;
//+
MeshSize {4} = 1.420580;
//+
MeshSize {5} = 0.915259;
//+
MeshSize {6} = 0.915259;
//+
MeshSize {7} = 1.420580;
//+
MeshSize {8} = 1.420580;
//+
Cylinder(2) = {19.351859, 2.425463, 0.000000, 0.000000, 0.000000, 1.000000, 0.545512, 2*Pi};
//+
MeshSize {9} = 0.054551;
//+
MeshSize {10} = 0.054551;
//+
Cylinder(3) = {8.205398, 1.169125, 0.000000, 0.000000, 0.000000, 1.000000, 0.802507, 2*Pi};
//+
MeshSize {11} = 0.080251;
//+
MeshSize {12} = 0.080251;
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
Save "../geo_unrolled/cad_443.geo_unrolled";
