% @author�� alicewithrabbit
% @gmail��imroxaswc@gmail.com
% @date��2016/8/27
clc,clear;
n=12;%����ÿ�ε��޳�Ʊ�����޶�
row=28;%�������ع�������
ruxuan=12;%����ѡ��
m=1;%ͶƱ��������Χ�����޵Ĳ���ڵڶ�����̭������
psx=11;%ͶƱ����
toupiao_stop=0;%��ֹ�жϱ�־
colume=42;%�������ع�������
rank=[1:1:28];%����2/3����Ʊʱ������Χ����
char r;
ruxuanrenshu=0;%��2/3����Ʊʱͳ��������
rxrs=[];%2/3����Ʊ��ѡ����
agree=rand(1,42);%����42���������������������޳�Ʊ��
LEVEL_A=[1;2;3;4];%��ѡ���߼�ƽ��
LEVEL_B=[5;6;7;8];
LEVEL_C=[9;10;11;12];
LEVEL_D=[13;14;15;16];
LEVEL_E=[17;18;19;20];
LEVEL_F=[21;22;23;24];
LEVEL_G=[25;26;27;28];
% B=[
%     randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);
%     randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);    
%     randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);
%     randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);
%     randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);
%     randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);randperm(28);
% ];%��ίƫ�þ���
B=[ LEVEL_A(randperm(4),:); %һ����ί�Ķ��߼�ѡ���ǵ�ƫ�ã����ڶԿ��У���ѧ�����Կ���+ѧ������ƫ�õ�
    LEVEL_B(randperm(4),:); %��ίƽ�������Բ��þ���������ɡ�
    LEVEL_C(randperm(4),:);
    LEVEL_D(randperm(4),:);
    LEVEL_E(randperm(4),:);
    LEVEL_F(randperm(4),:);
    LEVEL_G(randperm(4),:);
    ]
for i=1:1:41   
B=[B [ LEVEL_A(randperm(4),:); %������ίƫ�þ���
    LEVEL_B(randperm(4),:);
    LEVEL_C(randperm(4),:);
    LEVEL_D(randperm(4),:);
    LEVEL_E(randperm(4),:);
    LEVEL_F(randperm(4),:);
    LEVEL_G(randperm(4),:);
    ] ];
end
% B=B';
% agree_vector_2=[
%    11,11,11,11,11,11,11,...
%    11,11,11,11,11,11,11,...
%    11,11,11,11,11,11,11,...
%    11,11,11,11,11,11,11,...
%    11,11,11,11,11,11,11,...
%    11,11,11,11,11,11,11,...
% ]
agree_vector_1=ruxuan*agree;
agree_vector_2=round(agree_vector_1);%��ͬ����ίÿ��Ͷ���޳�Ʊ���������0��11��
