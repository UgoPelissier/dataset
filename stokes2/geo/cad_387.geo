//+
Mesh.MshFileVersion = 2.2;
//+
SetFactory("OpenCASCADE");
//+
Rectangle(1) = {0.663424, -3.813015, 0.000000, 36.979018, 8.853685, 0.000000};
//+
l = [3.7901851976564402, 1.6834478686275536, 0.47064967784898715, 0.47064967784898715, 0.5631636068721146, 0.5631636068721146, 3.7901851976564402, 1.6959561745949228];
//+
MeshSize {1} = 3.790185;
//+
MeshSize {2} = 1.683448;
//+
MeshSize {3} = 0.470650;
//+
MeshSize {4} = 0.470650;
//+
Disk(2) = {32.702581, -0.081407, 0.000000, 1.484395, 1.484395};
//+
c0 = 0.14843946826775545;
//+
MeshSize {5} = c0;
//+
Disk(3) = {18.005136, 0.360947, 0.000000, 1.002475, 1.002475};
//+
c1 = 0.10024752121216728;
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
