clc; clear; close all;
x = [2 4 3 5 2 6 4 3 5 7 4 2 3 6 5 4 3 8 2 5 6 4 3 5 7 4 2 6 5 3];
n = numel(x); vals = unique(x); f = zeros(size(vals));
for i=1:numel(vals), f(i)=sum(x==vals(i)); end
rf=f/n; cf=cumsum(f);
fprintf('Value  Frequency  Relative  Cumulative\n');
for i=1:numel(vals), fprintf('%5d %10d %9.4f %11d\n',vals(i),f(i),rf(i),cf(i)); end
disp('Modes:'); disp(vals(f==max(f)));
figure; bar(vals,f); title('Frequency Distribution of Software Defects');
xlabel('Number of Defects'); ylabel('Frequency'); grid on;
