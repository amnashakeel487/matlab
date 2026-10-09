clc; clear; close all;
x=[112 125 118 143 156 134 129 145 151 138 119 127 133 148 162 155 141 136 124 130 147 153 158 121 139 132 146 160 135 128 142 149 154 137 126 131 144 159 150 122];
n=numel(x); fprintf('n=%d, min=%d, max=%d, range=%d\n',n,min(x),max(x),range(x));
fprintf('Sturges estimate = %.2f\n',1+3.322*log10(n));
edges=[112 121 130 139 148 157 166]; f=histcounts(x,edges);
rf=f/n; cf=cumsum(f); lo=edges(1:end-1); hi=edges(2:end)-1;
fprintf('Interval       Freq  Relative  Cumulative\n');
for i=1:numel(f), fprintf('%d-%d          %2d    %.3f       %2d\n',lo(i),hi(i),f(i),rf(i),cf(i)); end
idx=find(cf>=n/2,1); fprintf('Median class: %d-%d ms\n',lo(idx),hi(idx));
figure; histogram(x,edges); title('Histogram of API Response Times'); xlabel('Response Time (ms)'); ylabel('Frequency'); grid on;
figure; plot(edges(2:end),cf,'-o'); title('Less-Than Cumulative Frequency Ogive'); xlabel('Upper Class Boundary (ms)'); ylabel('Cumulative Frequency'); grid on;
