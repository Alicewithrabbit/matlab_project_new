row_2=28;%�����ع���Ҫ
if(find(a>27&a<43))%�ų�43������
        t=sort(a);%����a����
        [p]=find(a>27&a<43,psx-ruxuanrenshu);%�ҳ�����2/3ѡƱ�ĺ�ѡ��
        t=[p]
        rxrs=[rxrs,p]%������ѡ�˾���
        g1=size(t);%ȡ����ѡ���������С
        ruxuanrenshu=ruxuanrenshu+g1(2);%��ѡ��������
%         agree_vector_2=agree_vector_2-g1(2);%�޳ɾ������,����޳�Ʊ����������ģ���ע�͵�
        if(ruxuanrenshu<11&&ruxuanrenshu>0)%��һ����ѡ��������0С��11
            for k=1:1:g1(2)
                indices = find(B==t(k));
                B(indices)=[];%�ҳ������������ȥ��
                row_2=row_2-1;%��������
            end
       B=reshape(B,row_2,colume);%�ع�ƫ�þ���
       B=[
            B;
            zeros(g1(2),colume);%��ȥ�����ֱ�Ϊȫ0
         ]        
       row=row-g1(2);%�ܺ�ѡ��������
       ruxuan=ruxuan-g1(2);%����ѡ��������
       t1=sort(a);
       [p1]=find(a==t1(1),m);
       t1=[p1]
       t4=sort(a);
       [p4]=find(a==43);
       a(p4)=0;
       row %��ʾ��ǰ��ʣ����ٺ�ѡ��
       ruxuanrenshu %��ʾ����ѡ����
       else%�����һ����11����ѡ�������ͶƱ
            fprintf('ͶƱ����');
            toupiao_stop=1;%��λ��ֹ�жϱ�־
            rxrs %��ѡ�˾���
       end       
else %��һ����ѡ����Ϊ0
       t1=sort(a);
       [p1]=find(a==t1(1),m);
       t1=[p1]
       t4=sort(a);
       [p4]=find(a==43);
       a(p4)=0;
       row
       ruxuanrenshu
end    