clc; clear; close all;
x=[12 15 17 18 19 21 21 23 24 24 25 26 27 28 28 29 31 32 34 35 36 38 41 43 47];
fprintf('n=%d, mean=%.2f, median=%.2f\n',numel(x),mean(x),median(x));
u=unique(x); f=zeros(size(u));
for i=1:numel(u), f(i)=sum(x==u(i)); end
disp('All modes:'); disp(u(f==max(f)));
disp('STEM | LEAVES');
stems=unique(floor(x/10)); s=floor(x/10); leaves=mod(x,10);
for i=1:numel(stems), fprintf('%d | ',stems(i)); fprintf('%d ',leaves(s==stems(i))); fprintf('\n'); end
figure; boxplot(x); title('Boxplot of Software Execution Times'); ylabel('Seconds'); grid on;
figure; histogram(x); title('Histogram of Software Execution Times'); xlabel('Seconds'); ylabel('Frequency'); grid on;
