function U=DE(X,bestX,Bound)
%���������ú���mutation(X,bestX,F,mutationStrategy)
%���������ú���crossover(X,V,CR,crossStrategy)
%mutation
%mutationStrategy=1��DE/rand/1,
%mutationStrategy=2��DE/best/1,
%mutationStrategy=3��DE/rand-to-best/1,
%mutationStrategy=4��DE/best/2,
%mutationStrategy=5��DE/rand/2.
%crossover
%crossStrategy=1:binomial crossover
%crossStrategy=2:Exponential crossover

F=0.8;%scaling factor ��������
CR=1;%crossover rate �������
mutationStrategy=2;%�������
crossStrategy=1;%�������

% while Generation<maxIteration
     V=mutation(X,bestX,F,mutationStrategy);
     U=crossover(X,V,CR,crossStrategy,Bound);
% end
end