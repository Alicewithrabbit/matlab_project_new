%BPneuron �㷨ʵ��
%@Author��alicewithrabbit
%email��imroxaswc@gmail.com
%release date��2016/9/6
%δ�������µ�feedforwardnet�������о���̫����
%��ȡѵ������
clc;clear;
fid=fopen('Iris_train_data.txt');
train_data=textscan(fid, '%f%f%f%f%f',75);
f1=cell2mat(train_data(1));
f2=cell2mat(train_data(2));
f3=cell2mat(train_data(3));
f4=cell2mat(train_data(4));
class=cell2mat(train_data(5));
%[f1,f2,f3,f4,class] = textread('Iris_train_data.txt' , '%f%f%f%f%f',75);
%textread���� �����ã�ת��textscan����
%����ֵ��һ��
[input,ps] = mapminmax( [f1 , f2 , f3 , f4 ]') ;%����ʹ��mapminmax����
%�����������
s = length( class) ;
output = zeros( s , 3  ) ;
for i = 1 : s 
   output( i , class( i )  ) = 1 ;%�õ������������
end
%����������
net = newff( minmax(input) , [10 3] , { 'tansig' 'purelin' } , 'traingdx' ) ; %��һ����˫����S�ͼ����
                                                                              %�ڶ��������Լ����
%����ѵ������
net.trainparam.show = 50 ;%��ʾ�м���������
net.trainparam.epochs = 500 ;%����������
net.trainparam.goal = 0.01 ;%Ŀ�����
net.trainParam.lr = 0.01 ;%ѧϰ��
%��ʼѵ��
net = train( net, input , output' ) ;
%��ȡ��������
fid1=fopen('Iris_test_data.txt');
train_data=textscan(fid1, '%f%f%f%f%f',75);
t1=cell2mat(train_data(1));
t2=cell2mat(train_data(2));
t3=cell2mat(train_data(3));
t4=cell2mat(train_data(4));
class_2=cell2mat(train_data(5));
%[t1,t2,t3,t4,class_2] = textread('Iris_test_data.txt' , '%f%f%f%f%f',75);
%�������ݹ�һ��
testInput = mapminmax( 'apply',[t1,t2,t3,t4]',ps) ;
%����
Y = sim( net , testInput ); 
%ͳ��ʶ����ȷ��
[s1 , s2] = size( Y ) ;
hitNum = 0 ;
for i = 1 : s2
    [m , Index] = max( Y( : ,  i ) ) ;
    if( Index  == class_2(i)   ) 
        hitNum = hitNum + 1 ; 
    end
end
sprintf('ʶ������ %3.3f%%',100 * hitNum / s2 )