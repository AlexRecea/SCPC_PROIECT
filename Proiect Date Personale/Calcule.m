% Definirea funcțiilor de transfer Hf și H0
kp = 2;
Tp = 205;
Hp = tf(kp, [Tp, 1]);

tr = 205;

T0 = tr/4;

H0 = tf(1, [T0, 1]);

% Calcularea funcției Hr
Hr = 1 / Hp * H0 / (1 - H0);
Hr = minreal(Hr) % Simplificarea funcției de transfer

% Extragem componentele PI din Hr
[num, den] = tfdata(Hr, 'v'); % Obținem numărătorul și numitorul ca vectori
Kp = num(1);                  % Coeficientul lui 's' din numărător (termen proporțional)
Ki = num(2);                  % Termenul constant din numărător (integral)

% Calculăm Ti și inversul său
Ti = Kp / Ki;                 % Timpul de integrare (T_i)   

% Afișare sub formă PI explicită
fprintf('PI(s) = %.4f (1 + 1 / %.0fs)\n', Kp, Ti);


%% feedforward
% Definirea funcțiilor de transfer Hf și H0
%tot ce e aici e din date
kp2 = 6.4;
Tp2 = 1.5;
Hp2 = tf(kp2, [Tp2, 1]);

tr2 = 4;

T02 = tr2/4;

H02 = tf(1, [T02, 1]);

% Calcularea funcției Hr
Hr2 = 1 / Hp2 * H02 / (1 - H02);
Hr2 = minreal(Hr2) % Simplificarea funcției de transfer

% Extragem componentele PI din Hr
[num, den] = tfdata(Hr2, 'v'); % Obținem numărătorul și numitorul ca vectori
Kp2 = num(1);                  % Coeficientul lui 's' din numărător (termen proporțional)
Ki2 = num(2);                  % Termenul constant din numărător (integral)

% Calculăm Ti și inversul său
Ti2 = Kp2 / Ki2;                 % Timpul de integrare (T_i)   

% Afișare sub formă PI explicită
fprintf('PI(s) = %.4f (1 + 1 / %.0fs)\n', Kp2, Ti2);
%% cascada
% Definirea funcțiilor de transfer Hf și H0
kp1 = 0.32;
Tp1 = 300;
Hp1 = tf(kp1, [Tp1, 1]);

tr1 = 205;

T01 = tr1/4;

H01 = tf(1, [T01, 1]);

% Calcularea funcției Hr
Hr1 = 1 / Hp1 * H01 / (1 - H01);
Hr1 = minreal(Hr1) % Simplificarea funcției de transfer

% Extragem componentele PI din Hr
[num, den] = tfdata(Hr1, 'v'); % Obținem numărătorul și numitorul ca vectori
Kp1 = num(1);                  % Coeficientul lui 's' din numărător (termen proporțional)
Ki1 = num(2);                  % Termenul constant din numărător (integral)

% Calculăm Ti și inversul său
Ti1 = Kp1 / Ki1;                 % Timpul de integrare (T_i)   

% Afișare sub formă PI explicită
fprintf('PI(s) = %.4f (1 + 1 / %.0fs)\n', Kp1, Ti1);