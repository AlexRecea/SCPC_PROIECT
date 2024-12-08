% coeficienti model pompa
k1 = 0.624; 
k2 = -0.015; 
k3 = -0.0006;
k = 0.046;

% nivel rezervor
h = 1;
% coeficient de curgere
C = 8.9;

k11 = k2^2 + 4* (k - k3) * k1;
k12 = 8* (k - k3);
k13 = 2* (k - k3);

% randament pompa
keta = 8e-5;

u0 = 6.6;


filtruK = 36.6;
revervorK = 16.4;

h0 = 16.4;
hfinal = 19.4;
deltaH = hfinal - h0;
deltaQ = 39.7 - 36.6;
deltaUA = 0.5;

kp = deltaH/3/deltaUA

y63 = h0 + 0.63*deltaH

Tp = 205;