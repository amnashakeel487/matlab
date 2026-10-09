clc; clear; close all;
marks=[78 84 91 76]; weights=[0.30 0.25 0.25 0.20];
names={'Programming','Statistics','Software Engineering','Database Systems'};
simple_mean=mean(marks); weighted_mean=sum(marks.*weights)/sum(weights);
scores=[62 70 74 74 79 81 85 88 90 95];
fprintf('Simple mean = %.2f\nWeighted mean = %.2f\nMedian = %.2f\nMode = %.2f\n',simple_mean,weighted_mean,median(scores),mode(scores));
figure; bar(marks); title('Course Marks'); xlabel('Course'); ylabel('Marks');
xticks(1:numel(marks)); xticklabels(names); grid on;
