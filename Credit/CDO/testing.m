function p=testing
% This program tests the cdo pricing functions.
clear;
% heterogeneous case
m =5;
K = 25;
r = 0.7;
N = 10*r*ones(K,1);
%N = 100*0.7;
p2 = [0.0007 0.0030 0.0068 0.0119 0.0182];
p3 = [0.0044 0.0102 0.0175 0.0266 0.0372];
%data = [N p2 0 10];
l = 10*K*[0;0.03;0.04;0.061;0.121];
u = 10*K*[0.03;0.04;0.061;0.121;1];
s = [1;1;1;1;1];
d = [0.955;0.905;0.845;0.792;0.741];
ti = [1;2;3;4;5];
%cdo(m,data,l,u,s,d,ti)

%N = 0.7*[10;10;10;10;10;10;20;20;20;30;30;70;70;70];
%p1 = [0.0002 0.0010 0.003 0.005 0.008];
%p = [p2;p3;p2;p3;p3;p3;p3;p2;p3;p2;p3;p1;p2;p3];
%p = [p2;p2;p2;p2;p2;p2;p2;p2;p2;p2];
p = [p2(1)*ones(K,1) p2(2)*ones(K,1) p2(3)*ones(K,1) p2(4)*ones(K,1) p2(5)*ones(K,1)];
%p = [p3;p3;p3;p3;p3;p3;p3;p3;p3;p3];
%a = [0.5;0.5;0.6;0.6;0.7;0.8;0.5;0.6;0.6;0.5;0.5;0.4;0.4;0.5];
a = zeros(K,1);
%k = [2;1;2;2;2;1;3;4;3;7;3;4;3;3];
k = ones(K,1);
data = [N p a k];
%l = 1300*[0;0.03;0.04;0.061;0.121];
%u = 1300*[0.03;0.04;0.061;0.121;1];
p=cdo(m,data,l,u,s,d,ti);
