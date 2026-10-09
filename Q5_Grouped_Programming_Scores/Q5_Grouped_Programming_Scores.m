clc; clear; close all;
x=[42 55 61 67 72 74 81 69 58 63 77 85 91 48 52 66 71 73 79 82 88 93 57 62 68 75 80 84 87 90 45 50 59 64 70 76 78 83 86 89 94 96 54 60 65 72 74 81 85 92];
n=numel(x); fprintf('n=%d, min=%d, max=%d, range=%d\n',n,min(x),max(x),range(x));
edges=[40 50 60 70 80 90 100]; f=histcounts(x,edges); lo=edges(1:end-1); hi=edges(2:end)-1;
mid=(lo+hi)/2; cf=cumsum(f);
fprintf('Class       Freq  Midpoint  Cumulative\n');
for i=1:numel(f), fprintf('%d-%d       %2d     %.1f       %2d\n',lo(i),hi(i),f(i),mid(i),cf(i)); end
figure; histogram(x,edges); title('Histogram of Programming Course Scores'); xlabel('Score'); ylabel('Frequency'); grid on;
figure; plot(mid,f,'-o','LineWidth',2); title('Frequency Polygon of Programming Scores'); xlabel('Class Midpoint'); ylabel('Frequency'); grid on;
figure; plot(hi,cf,'-o','LineWidth',2); title('Cumulative Frequency Curve of Programming Scores'); xlabel('Upper Class Limit'); ylabel('Cumulative Frequency'); grid on;
