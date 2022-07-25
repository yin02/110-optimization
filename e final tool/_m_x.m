clear all;
clc
syms x y
f = x^4+3*x^2+3+2*x^2*y + 5*y^2+7*x+y+6;%% f(x)
gx = diff(f,x);
gy = diff(f,y);
hx = [diff(gx,x);diff(gx,y)];
hy = [diff(gy,x);diff(gy,y)];

fx = vpa(subs(f,[x y],[1 1]));%给x值，求f（1，1）
fx2 = vpa(subs(f,[x y],[0.0519 0.1038]));

g_x = vpa(subs(gx,[x y],[1 1]))*'p_x';%改
g_y = vpa(subs(gy,[x y],[1 1]))*'p_y';%改
h_x = vpa(subs(hx,[x y],[1 1]));%改
h_y = vpa(subs(hy,[x y],[1 1]));%改

B = h_x(1)*'p_x2' + h_x(2)*'p_xp_y'+h_y(1)*'p_xp_y'+ h_y(2)*'p_y2';


m = fx + g_x +g_y +1/2*B

disp(vpa(subs(gx,[x y],[1 1])));
disp(vpa(subs(gy,[x y],[1 1])));% gradient

disp(vpa(subs(hx,[x y],[1 1])));
disp(vpa(subs(hy,[x y],[1 1])));%hessian



m0 = vpa(subs(m,[x y],[0 0]));
m1 = vpa(subs(m,[x y],[-0.208/4.32 -0.404/4.2]));

rho = (fx - fx2)/(m0 - m1); 
disp(rho);