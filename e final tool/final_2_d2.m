clear all;
clc
syms x a y;
v1 = [1 1];
v2 = [-7 3].';
A = [2 4;4 10];
v1*A*v2;%% 为0
x = 0.7 -7*a;
y = -0.3 +3*a;
f = x^2 + 4*x*y + 5*y^2;
h = expand(f);% -b/2a  -1.3,手动最小值
syms x a;
fnew = subs(h,a,x)% replace a with x, 手动把output放到下面，搞最小值,要记得！！！

[x,fval]=fminbnd('10*x^2 - 2*x + 1/10',-200,200);%和direction1 不一样
a = x % matlab 有故障，手动计算x = 0.7 -7*a;y = -0.3 +3*a; x2=[x y] (0,0)
