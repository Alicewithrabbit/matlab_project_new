close all;
clear;clc;

%@author:alicewithrabbit
%release date:16/10/6
%email:imroxaswc@gmail.com

sigma = sqrt(1);
v = normrnd(0,sigma,16);

n = 4;
y = [1,1,1,1];
delta = 1;
a = 5;
u = Mfunction(y,n,a,delta);

figure(1);
stem(u),grid on

% ������С���˱�ʶ����
z(2) = 0;z(1) = 0;
%�۲�ֵ���������ֵ������
for k = 3:60;%ѭ��������3��15   
    z(k) = -1.6*z(k-1) - 0.7*z(k-2) + u(k-1) + 0.4*u(k-2) + 0.5*v(k); 
end

%RLS������С���˱�ʶ
c0 = [0.001 0.001 0.001 0.001]';
p0 = 10^3*eye(4,4);
E = 0.000000005;%������
c = [c0,zeros(4,59)];%����ʶ��������ĳ�ʼֵ����С
e = zeros(4,60);%������ĳ�ʼֵ����С
lamt = 1;
for k = 3:60; 
    h1 = [-z(k-1),-z(k-2),u(k-1),u(k-2)]';
    k1 = (p0*h1)/(h1'*p0*h1 + 1*lamt);%���K��ֵ
    new=z(k)-h1'*c0; 
    c1 = c0 + k1*new;%�󱻱�ʶ����c
    p1 = 1/lamt*(eye(4) - k1*h1')*p0;
    e1 = (c1 - c0)./c0;%�������ǰֵ����һ�ε�ֵ�Ĳ�ֵ
    e(:,k) = e1; %�ѵ�ǰ��Ա仯����������������������һ��    
    c(:,k) = c1;%�ѱ�ʶ����c �����������ʶ������������һ�� 
    c0 = c1;%�»�õĲ�����Ϊ��һ�ε��Ƶľɲ���
    p0 = p1;
    if norm(e1) <= E 
        break;%��������������Ҫ����ֹ����
    end
end
%�������
a1 = c(1,:); a2 = c(2,:); b1 = c(3,:); b2 = c(4,:); 
ea1 = e(1,:); ea2 = e(2,:); eb1 = e(3,:); eb2 = e(4,:); 
figure(2);
i=1:60;
plot(i,a1,'k',i,a2,'b',i,b1,'r',i,b2,'g') %������ʶ���
legend('a1','a2','b1','b2');
title('������С���˲�����ʶ')
figure(3); 
i=1:60; 
plot(i,ea1,'k',i,ea2,'b',i,eb1,'r',i,eb2,'g') %������ʶ������������
legend('a1','a2','b1','b2');
title('��ʶ����')

