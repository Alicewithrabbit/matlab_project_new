close all;
clear,clc;

n = 4;%��λ�Ĵ�������
N = 2^n - 1;%����
a = 0.5;%���
delta = 0.6;%��ɢ����
X = [0,0,0,0];%�м����
A = [1,1,1,1];%�Ĵ�����ֵ

Output = zeros(1,3*N);
u = zeros(1,3*N);
t = zeros(1,3*N);

for i = 1:3*N
    Output(i) = A(4);
    t(i) = delta*i;
    if Output(i) == 1
        u(i) = -a;
    else
        u(i) = a;
    end
    X(1) = xor(A(3),A(4));
    X(2) = A(1);
    X(3) = A(2);
    X(4) = A(3);
    A(1) = X(1);A(2) = X(2);A(3) = X(3);A(4) = X(4);
end

stairs(t,u,'LineWidth',2,'Marker','d','MarkerFaceColor','c');
xlabel('t');ylabel('a');
title('����λ�Ĵ������������ķ�ֵΪ0.5������0.6��M����');
axis([1 20 -0.6 0.6])

y = Average(3*N,t);

d = Different(y,3*N,t);



[f,x] = ksdensity(t);
figure(2)
plot(x,f);
xlabel('x'),ylabel('f');
title('������еķֲ�ͼ')
    
