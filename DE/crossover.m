function U=crossover(X,V,CR,crossStrategy,Bound)
[NP,Dim]=size(X);
switch crossStrategy
    %crossStrategy=1:binomial crossover
    case 1
        for i=1:NP
            jRand=floor(rand*Dim);%����jRandҪ��[0,1)*Dim��ȡֵ���ʶ���floor
            for j=1:Dim
                if rand<CR||j==jRand
                    U(i,j)=V(i,j);
                else
                    U(i,j)=X(i,j);
                end     
            end    
        end
    %crossStrategy=2:Exponential crossover
    case 2
        for i=1:NP
            j=floor(rand*Dim);%����j��[0,1)*Dim��ȡֵ���ʶ���floor
            L=0;
            U=X;
            U(i,j)=V(i,j);
            j=mod(j+1,D);
            L=L+1;
            while(rand<CR&&L<Dim)
                U(i,j)=V(i,j);
                j=mod(j+1,D);
                L=L+1;
            end
        end
        
    otherwise
        error('û����ָ���Ľ�����ԣ��������趨crossStrategy��ֵ'); 
end
%% Խ������
for i=1:NP
    for j=1:Dim
        while (U(i,j)>Bound(2,j)) || (U(i,j)<Bound(1, j))
            U(i,j)=Bound(1,j)+rand*(Bound(2,j) - Bound(1,j));
        end
    end

end
end
        
