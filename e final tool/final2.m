clear all;
clc
syms x a y;
v1 = [1 1];
v2 = [-7 3].';
A = [2 4;4 10];
v1*A*v2;%% 为0
x = 2 + a;
y = 1 + a;
f = x^2 + 4*x*y + 5*y^2;
h = expand(f);% -b/2a  -1.3,手动最小值
syms x a;
fnew = subs(h,a,x)% replace a with x, 手动把output放到下面，搞最小值

[x,fval]=fminbnd('10*x^2 + 26*x + 17',-200,200);
a = x


