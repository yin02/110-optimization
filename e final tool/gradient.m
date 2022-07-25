clear all;
clc
syms x y
f = 4*x^2*y^2 + 3*x^4*y^4 +y^2;%% f(x)
gx = diff(f,x);
gy = diff(f,y);
hx = [diff(gx,x);diff(gx,y)];
hy = [diff(gy,x);diff(gy,y)];

fx = vpa(subs(f,[x y],[0 0.5]));%给x值，求f（1，1）
fx2 = vpa(subs(f,[x y],[0 0.5]));

g_x = vpa(subs(gx,[x y],[0 0.5]))*'p_x';%改
g_y = vpa(subs(gy,[x y],[0 0.5]))*'p_y';%改

disp(vpa(subs(gx,[x y],[0 0.5])));
disp(vpa(subs(gy,[x y],[0 0.5])));% gradient