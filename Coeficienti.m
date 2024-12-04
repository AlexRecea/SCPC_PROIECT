% coeficienti model pompa
k1 = 0.624; 
k2 = -0.015; 
k3 = -0.0006;
k = 0.035;

% nivel rezervor
h = 1;
% coeficient de curgere
C = 9;

k11 = k2^2 + 4* (k - k3) * k1;
k12 = 8* (k - k3);
k13 = 2* (k - k3);

% randament pompa
keta = 8e-5;