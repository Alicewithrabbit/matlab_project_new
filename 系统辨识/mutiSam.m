clear,clc;
close all;
A = 5^17;M = 2^42 - 1;x0 = 1;N = 100;%��������
v = zeros(1,100);

%algorithm:
for i=1:N
    x1 = mod(A*x0,M);
    v1 = x1/M;
    v(:,i) = v1;
    x0 = x1;
end

%grapher:
plot((1:N),v);
xlabel('k'),ylabel('v');
title('��ͬ�෨��(0,1)���ȷֲ����������')


