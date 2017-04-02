file = fopen ('(normal)TemposTemperatura10000.txt', 'r');
x = fscanf(file, '%ld ');
fclose(file);

file = fopen ('(stress3)TemposTemperatura10000.txt', 'r');
y = fscanf(file, '%ld ');
fclose(file);

x = x/1e3;
y = y/1e3;
bin = 0:10:14000;
meanx = mean(x);
stdx = std(x);
disp(['min: ', num2str(min(x))]);
disp(['max: ',num2str(max(x))]);
disp(['mean: ', num2str(meanx)]);
disp(['std: ',num2str(stdx)]);
disp('-----------------------------------');
meany = mean(y);
stdy = std(y);
disp(['min stress: ', num2str(min(y))]);
disp(['max stress: ',num2str(max(y))]);
disp(['mean stress: ', num2str(meany)]);
disp(['std stress: ',num2str(stdy)]);

figure('Name','histograma')
hist(x,bin);
axis([0 10000 0 250])
ylabel('Contagem');
xlabel('Tempo de resposta (us)');

figure('Name','histograma stress')
hist(y,bin);
axis([0 10000 0 250])
ylabel('Contagem');
xlabel('Tempo de resposta (us)');

figure('Name','Distribuicao normal')
hold on
plot(bin,normpdf(bin,meanx,stdx),'LineWidth',2)
plot(bin,normpdf(bin,meany,stdy/50),'Color','red','LineWidth',2)
ylabel('Probabilidade');
xlabel('Tempo de resposta (us)');
legend('Baixa Atividade','Alta Atividade')