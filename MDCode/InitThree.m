doPlot = 1;
dt = 15e-15;
TStop = 100000 * dt;
InitDist = 0.0;
Method = 'VE'; % VE -- verlot; FD -- Forward Difference

Mass0 = MassMax * C.am; % Silicon multiplied by change constant
Mass1 = MassMin * C.am; % Argon multiplied by change constant

AtomSpacing = 0.5430710e-9;
LJSigma = AtomSpacing / 2^(1/6);
LJEpsilon = 1e-21;

PhiCutoff = 3 * AtomSpacing * 1.1;

T = 300;

X0 = AtomSpacing*[-0.8 0 0.8];
Y0 = AtomSpacing*[0 -1.2 0];
% V = sqrt(2 * 2e-22 / Mass1);
V = 0;
VX0 = [0 0 0];
VY0 = [0 V/2 V/2];
Types = [0 1 0];
AddListAtomic(X0,Y0,VX0,VY0,Types,0,0);

Size = 2 * AtomSpacing;
Limits = [-Size +Size -Size +Size]; % square is good
PlDelt = 5*dt;
MarkerSize = 10;
PlotFile = 'Block.gif';
doPlotImage = 0;
PlotSize = [100, 100, 1049, 1049];
PlotPosOnly = 1;

ScaleV = .2e-11;
ScaleF = 20;
