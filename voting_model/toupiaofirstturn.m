clc;
a=zeros(1,28);%����һ��1x28��ȫ����ͳ��Ʊ��
for i=1:1:colume
    if(agree_vector_2(i)==0)%�ж��Ƿ�ȫ��Ϊ��ȨƱ
        continue;
    else   
        for j=1:1:agree_vector_2(i)%ͳ���޳�Ʊ��
            for d=1:1:row
                switch(B(j,i))
                    case rank(d)
                        a(rank(d))=a(rank(d))+1;%��Ʊ��          
                    otherwise;
                end
            end
        end
    end     
end

