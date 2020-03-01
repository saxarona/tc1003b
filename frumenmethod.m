% Frumen Olivas frumen@tec.mx

clear; clc;
%% Copa 1 para vino blanco
deltax = 0.5; % Paso de x (resolucion)

% Ecuaciones de las rectas
% Ecuacion de la recta 1
px1 = 1.0; py1 = 2.2; % Punto 1 x,y
px2 = 2.2; py2 = 1.0; % Punto 2 x,y
x1 = px1:deltax:px2; % 1:2.2
m1 = (py2-py1)/(px2-px1); % m1=-1;
y1 = m1*x1 + (m1*(-px1)) + py1; % y1 = (m1*x1)+3.2;
% Ecuacion de la recta 2
px1 = 2.2; py1 = 1.0; % Punto 1 x,y
px2 = 7.5; py2 = 1.0; % Punto 2 x,y
x2 = px1:deltax:px2; % 2.2:7.5
m2 = (py2-py1)/(px2-px1); % m2=0;
y2 = m2*x2 + (m2*(-px1)) + py1; % y2=(m2*x2)+1;
% Ecuacion de la recta 3
px1 =  7.5; py1 = 1.0; % Punto 1 x,y
px2 = 10.5; py2 = 3.3; % Punto 2 x,y
x3 = px1:deltax:px2; % 7.5:10.5
m3 = (py2-py1)/(px2-px1); % m3=2.3/3;
y3 = m3*x3 + (m3*(-px1)) + py1; % y3=m3*x3-4.75;
% Ecuacion de la recta 4
px1 = 10.5; py1 = 3.3; % Punto 1 x,y
px2 = 12.7; py2 = 3.3; % Punto 2 x,y
x4 = px1:deltax:px2; % 10.5:12.7
m4 = (py2-py1)/(px2-px1); % m4=0;
y4 = m4*x4 + (m4*(-px1)) + py1; % y4=(m4*x4)+3.3;
% Ecuacion de la recta 5
px1 = 12.7; py1 = 3.3; % Punto 1 x,y
px2 = 15.4; py2 = 2.6; % Punto 2 x,y
x5 = px1:deltax:px2; % 12.7:15.4
m5 = (py2-py1)/(px2-px1); % m5=2.3/3;
y5 = m5*x5 + (m5*(-px1)) + py1; % y5=m5*x5+6.5925;

% Grafica de las ecuaciones
figure
subplot(1,2,1)
% % Grafica de las rectas separadas por color
% plot(-y1,x1,'r',-y2,x2,'g',-y3,x3,'b',-y4,x4,'k',-y5,x5,'c')
x=[x1,x2,x3,x4,x5];
y=[y1,y2,y3,y4,y5];
plot(-y,x,'k','LineWidth',3)
axis([-5 3 0.8 15.5])
% Grafica en 3D del solido en revolucion
subplot(1,2,2)
cylinder(y)

% Calcular volumen del solido (integrar)
IntegracionSolidos1

%% Copa para vino tinto
deltax = 0.1; % Paso de x (resolucion)

% Ecuaciones de las rectas
% Ecuacion de la recta 1
px1 = 1.0; py1 = 2.2; % Punto 1 x,y
px2 = 2.2; py2 = 1.0; % Punto 2 x,y
x1 = px1:deltax:px2; % 1:2.2
m1 = (py2-py1)/(px2-px1); % m1=-1;
y1 = m1*x1 + (m1*(-px1)) + py1; % y1 = (m1*x1)+3.2;
% Ecuacion de la recta 2
px1 = 2.2; py1 = 1.0; % Punto 1 x,y
px2 = 5; py2 = 1.0; % Punto 2 x,y
x2 = px1:deltax:px2; % 2.2:5
m2 = (py2-py1)/(px2-px1); % m2=0;
y2 = m2*x2 + (m2*(-px1)) + py1; % y2=(m2*x2)+1;
% Ecuacion de la circunferencia = (X-h)^2 + (Y-k)^2 = r^2
% y = sqrt((r^2)-(x-h).^2)+k
px1 =  5; py1 = 1.0; % Punto 1 x,y
px2 = 10; py2 = 6.0; % Punto 2 x,y
x3 = px1:deltax:px2; % 5:10
ph = px2; pk = py1; r = px2-px1;
y3 = real(sqrt((r^2)-(x3-ph).^2)+pk);

% Grafica de las ecuaciones
figure
subplot(1,2,1)
% % Grafica de las rectas separadas por color
% plot(-y1,x1,'r',-y2,x2,'g',-y3,x3,'b')
x=[x1,x2,x3];
y=[y1,y2,y3];
plot(-y,x,'k','LineWidth',3)
axis([-6 3 0.8 10])
% Grafica en 3D del solido en revolucion
subplot(1,2,2)
cylinder(y)

% Calcular volumen del solido (integrar)
IntegracionSolidos2

%% Volumen del liquido de la copa de vino tinto
% Ecuacion de la circunferencia = (X-h)^2 + (Y-k)^2 = r^2
% y = sqrt((r^2)-(x-h).^2)+k
deltax = 0.1; % Paso de x (resolucion)
px1 =  5; py1 = 1.0; % Punto 1 x,y
px2 = 10; py2 = 6.0; % Punto 2 x,y
x4 = px1:deltax:px2; % 5:10
ph = px2; pk = py1; r = px2-px1;
y4 = real(sqrt((r^2)-(x4-ph).^2)+pk);
figure
subplot(1,2,1)
plot(-y4,x4,'k','LineWidth',3)
axis([-6 3 0.8 10])
% Grafica en 3D del solido en revolucion
subplot(1,2,2)
cylinder(y4)
