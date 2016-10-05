close all;
clear;clc;

%@author:alicewithrabbit
%release date:16/10/6
%email:imroxaswc@gmail.com
sigma = sqrt(0.1);
v = normrnd(0,sigma,16);

n = 4;
y = [1,1,1,1];
delta = 1;
a = 5;
u = Mfunction(y,n,a,delta);

figure(1);
stem(u),grid on

%���������С���˱�ʶ
z(2) = 0;z(1) = 0;
theat0 = [0.001 0.001 0.001 0.001 0.001 0.001 0.001]';%ֱ�Ӹ�������ʶ�����ĳ�ʼֵ,��һ�����С��ʵ����
p0 = 10^4*eye(7,7);%��ʼ״̬P0
theat = [theat0,zeros(7,59)];%����ʶ��������ĳ�ʼֵ����С
for k = 3:60; 
    z(k) = -1.6*z(k-1) - 0.7*z(k-2) + u(k-1) + 0.4*u(k-2) + 0.9*v(k)...
        -1.2*v(k-1) + 0.3*v(k-2); 
    h1 = [-z(k-1),-z(k-2),u(k-1),u(k-2),v(k),v(k-1),v(k-2)]';
    x = h1'*p0*h1 + 1;
    k1 = p0*h1/x; %K
    d1 = z(k) - h1'*theat0; 
    theat1 = theat0 + k1*d1;%��ʶ����c 
    theat0 = theat1;%����һ����
    theat(:,k) = theat1;%�ѱ�ʶ����c �����������ʶ�������� 
    p1 = p0 - k1*k1'*(h1'*p0*h1 + 1);%find p(k)
    p0 = p1;%���´���
end%ѭ������


%�������
    a1 = theat(1,:); a2 = theat(2,:); b1 = theat(3,:); b2 = theat(4,:);
    c1 = theat(5,:); c2 = theat(6,:); c3 = theat(7,:); 
i = 1:60;    
figure(2);
plot(i,z)
figure(3)
plot(i,a1,'r',i,a2,'b',i,b1,'k',i,b2,'y',i,c1,'g',i,c2,'c',i,c3,'m')%������������ʶ����
title('���������С���˱�ʶ����')%����