clc;
a=zeros(1,28);
for i=1:1:colume
    if(agree_vector_2(i)==0)%�ж��Ƿ�ȫ��Ϊ��ȨƱ
        continue;
    else   
        for j=1:1:agree_vector_2(i)%ͳ���޳�Ʊ��
            for d=1:1:n
                switch(B(j,i))
                    case rank(d)
                        a(rank(d))=a(rank(d))+1;%��Ʊ��          
                    otherwise;
                end
            end
        end
    end     
end
t4=sort(a);
[p4]=find(a==0);
a(p4)=43;%Ϊ��Ӱ�����������ʱ��0ת��Ϊ43