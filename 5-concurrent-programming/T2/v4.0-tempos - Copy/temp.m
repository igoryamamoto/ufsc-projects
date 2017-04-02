file = fopen ('(normal)TemposTemperatura10000.txt', 'r');
x = fscanf(file, '%ld ');
fclose(file);

file = fopen ('(stress3)TemposTemperatura10000.txt', 'r');
y = fscanf(file, '%ld ');
fclose(file);

x = x/1e3;
y = y/1e3;

meanx = mean(x);
stdx = std(x);
disp(['min stress: ', num2str(min(x))]);
disp(['max stress: ',num2str(max(x))]);
disp(['mean stress: ', num2str(meanx)]);
disp(['std stress: ',num2str(stdx)]);
disp('-----------------------------------');
meany = mean(y);
stdy = std(y);
disp(['min stress: ', num2str(min(y))]);
disp(['max stress: ',num2str(max(y))]);
disp(['mean stress: ', num2str(meany)]);
disp(['std stress: ',num2str(stdy)]);

figure('Name','histograma')
hist(x,10000);

figure('Name','histograma stress')
hist(y,10000);
axis([0 20 0 1000])

figure('Name','Distribuicao normal')
hold on
plot(0:0.001:10,normpdf(0:0.001:10,meanx,stdx))
plot(0:0.001:10,normpdf(0:0.001:10,meany,stdy),'Color','red')