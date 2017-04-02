clear all; close all; clc;
%% Modelos Aproximados da Planta - Contínuo
fopdt = tf([1],[5.2637 1],'InputDelay',5.1585);
sopdt = tf([1],[11.3927 6.7506 1],'InputDelay',3.4468);
fopdt_pade = pade(fopdt,1)
sopdt_pade = pade(sopdt,1)

%% Modelos Aproximados da Planta - Discretização
Ts = 0.5; % tempo de amostragem
foz = c2d(fopdt,Ts)
n_fo = foz.num{1};
d_fo = foz.den{1};
delay1 = foz.InputDelay;
soz = c2d(sopdt,Ts)
n_so = soz.num{1};
d_so = soz.den{1};
delay2 = soz.InputDelay;
%% Código de Simulação
% Condições iniciais
k_ini = delay1+1;
nit = 800;
u(1:nit) = 0; yn(1:k_ini) = 0; yp(1:k_ini) = 0; 
y(1:k_ini) = 0; du(1:k_ini) = 0; erro(1:k_ini) = 0;
% Seleciona sintonia do controlador
controle = menu('CONTROLADOR','PI','PID');
% Referência e perturbação
yr(1:20) = 0; yr(21:220) = 2; yr(221:620) = 4; yr(621:nit) = 1;
do(1:420) = 0; do(421:nit) = 0.2;
% Discretização da planta
nps = 1;
dps = [32 80 80 40 10 1]; % mdt = 1/(2*s+1)^5
[npz,dpz] = c2dm(nps,dps,Ts,'zoh');
switch controle
    case 1 % PI
          %0.08972 z - 0.01282
          %-------------------
          %      z - 1
        q0 = 0.08972;
        q1 = -0.01282;
        % Simulação
        for k = k_ini:nit
        % Saída da planta original
              yp(k) = -dpz(6)*yp(k-5)-dpz(5)*yp(k-4)-dpz(4)*yp(k-3)-dpz(3)*yp(k-2)-dpz(2)*yp(k-1)+...
                  npz(6)*u(k-5)+npz(5)*u(k-4)+npz(4)*u(k-3)+npz(3)*u(k-2)+npz(2)*u(k-1);
              y(k) = yp(k) + do(k);
        % Saída da planta estimada
              yn(k) = -d_fo(2)*yn(k-1)+n_fo(1)*u(k)+n_fo(2)*u(k-1);
        % Lei de controle
              erro(k) = yr(k)-yn(k)+yn(k-delay1)-y(k);
              u(k) = u(k-1) + q0*erro(k) + q1*erro(k-1);
        end
        % Resultados
        figure(1)
        t = 0:Ts:Ts*(nit-1);
        subplot(2,1,1),plot(t,y,'r',t,yr,'--k','linewidth',2),
                       ylabel('saída e referência'),xlabel('tempo (s)'),grid;
        subplot(2,1,2),plot(t,u,'b','linewidth',2),
                       ylabel('controle'),xlabel('tempo (s)'),grid;
    case 2 %PID
          %  0.2729 z^2 - 0.3773 z + 0.1304
          % ------------------------------
          %       z^2 - 1.6 z + 0.6
        q0 = 0.2729;
        q1 = -0.3773;
        q2 = 0.1304;
        a1 = -1.6;
        a2 = 0.6;
        % Simulação
        for k = k_ini:nit
        % Saída da planta original
              yp(k) = -dpz(6)*yp(k-5)-dpz(5)*yp(k-4)-dpz(4)*yp(k-3)-dpz(3)*yp(k-2)-dpz(2)*yp(k-1)+...
                  npz(6)*u(k-5)+npz(5)*u(k-4)+npz(4)*u(k-3)+npz(3)*u(k-2)+npz(2)*u(k-1);
              y(k) = yp(k) + do(k);
        % Saída da planta estimada
              yn(k) = -d_so(2)*yn(k-1)-d_so(3)*yn(k-2)+n_so(1)*u(k)+n_so(2)*u(k-1)+n_so(3)*u(k-2);
        % Lei de controle
              erro(k) = yr(k)-yn(k)+yn(k-delay2)-y(k);
              u(k) = -a1*u(k-1) -a2*u(k-2) + q0*erro(k) + q1*erro(k-1)+ q2*erro(k-2);
        end
        % Resultados
        figure(1)
        t = 0:Ts:Ts*(nit-1);
        subplot(2,1,1),plot(t,y,'r',t,yr,'--k','linewidth',2),
                       ylabel('saída e referência'),xlabel('tempo (s)'),grid;
        subplot(2,1,2),plot(t,u,'b','linewidth',2),
                       ylabel('controle'),xlabel('tempo (s)'),grid;
end
