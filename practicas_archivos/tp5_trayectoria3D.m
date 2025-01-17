% Trabajo Practico 5
% 
% Catalizate en Octave - 2019 - FCAI-UNCuyo
% 
% Congreso Nacional de Estudiantes de Ingenieria Quimica (CONEIQ)
%
close all
clear all

% vector columna de instantes de tiempo entre 0 y 3pi
N = 3*90;
tt= linspace(0,3*pi,N)';

% funciones parametricas de las posiciones en (x,y,z)
x=@(t) t.*cos(t)/2;
y=@(t) t.*sin(t)/3;
z=@(t) t;

% vector posicion
r=@(t) [x(t), y(t), z(t)];

%----------------------------------------------------------
% 1.1) Graficamos la trayectoria entre 0 y 3pi
figure(1);clf
plot3(x(tt),y(tt),z(tt),'r-','linewidth',2);
axis equal
xlabel('x(t)','fontsize',20)
ylabel('y(t)','fontsize',20)
zlabel('z(t)','fontsize',20)
set(gca,'fontsize',20)

%----------------------------------------------------------
% 1.2) Distancia entre P0=r(t) y el plano sin(t)*x+cos(t)*y+z=3*t

dP=@(t) abs(0.0)/sqrt(2.0); %==> completar

figure(2);clf
plot(tt,dP(tt),'k-','linewidth',2);
axis equal
xlabel('t','fontsize',20)
ylabel('d_P(t)','fontsize',20)
set(gca,'fontsize',20)

%----------------------------------------------------------
% 1.3) Rapidez de la particula

% derivadas de las funciones parametricas de posicion
xp=@(t) 0.0; %==> completar
yp=@(t) 0.0; %==> completar
zp=@(t) 0.0; %==> completar

% rapidez
sp=@(t) sqrt(0.0); %==> completar

figure(3);clf
plot(tt,sp(tt),'m-','linewidth',2);
xlabel('t','fontsize',20)
ylabel('|dr/dt|','fontsize',20)
set(gca,'fontsize',20)


%----------------------------------------------------------
% 1.4) Calculo de la longitud de la trayectoria entre 0 y 3pi

% calculo de la longitud en [0,3*pi] mediante integracion numerica
L =quad(sp,0,3*pi);

% calculo de la longitud recorrida en funcion de t
ss=zeros(N,1);

for i=1:N
  s(i) = 0.0; % ==> completar
end 

figure(4);clf
plot(tt,ss,'r-','linewidth',2);
xlabel('t','fontsize',20)
ylabel('s(t)','fontsize',20)
set(gca,'fontsize',20)

