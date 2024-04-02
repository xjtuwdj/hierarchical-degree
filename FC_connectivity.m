clear;clc;
load FC.mat;
for i=1:225
    positive_percentage(i,1)=length(find(FC{i,1}>0))/10000;
end
positive_hc=mean(positive_percentage(1:105,1));
positive_sch=mean(positive_percentage(106:144,1));
positive_bd=mean(positive_percentage(145:187,1));
positive_adhd=mean(positive_percentage(188:225,1));