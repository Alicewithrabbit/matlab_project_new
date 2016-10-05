clear,clc;
close all;
A = 2^34+1;M = 2^8;x0 = 1;c=1;N = 10000;%迭代次数
v = zeros(1,100);

%algorithm:
for i=1:N
    x1 = mod(A*x0 + c,M);
    v1 = x1/M;
    v(:,i) = v1;
    x0 = x1;
end

%grapher:
plot((1:N),v);
xlabel('k'),ylabel('v');
title('混合同余法的(0,1)均匀分布的随机序列')