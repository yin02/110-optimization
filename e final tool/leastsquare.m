clear all;
clc
syms x1 x2 x
f = x1*exp(x)+x2*sin(x);%% f(x)
eqn1 = vpa(subs(f,x,1))%%equation1
eqn2 = vpa(subs(f,x,2))%%eq2

A = equationsToMatrix([eqn1, eqn2], [x1, x2]);
B = [6.4467 ; 10.0825];
X = linsolve(A,B)