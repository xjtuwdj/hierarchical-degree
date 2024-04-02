function [HD,HD_sub,HD_level,HD_global] = Hierarchical_degree(ROI_num,sub_num,lmd,U)
Vis=[1:9,51:58]';
SM=[10:15,59:66]';
DA=[16:23,67:73]';
SA=[24:30,74:78]';
Lim=[31:33,79:80]';
Con=[34:37,81:89]';
DMN=[38:50,90:100]';
HD=zeros(ROI_num,sub_num);
HD_sub=zeros(7,sub_num);
HD_level=cell(sub_num,1);
for k=1:sub_num
for i=1:ROI_num
    for j=1:ROI_num
        HD(i,k)=HD(i,k)+lmd(j,k)^(2)*(U{k,1}(i,j))^(2);
        HD_level{k,1}(i,j)=lmd(j,k)^(2)*(U{k,1}(i,j))^(2);
    end
end
end
HD_sub(1,:)=mean(HD(Vis,:));
HD_sub(2,:)=mean(HD(SM,:));
HD_sub(3,:)=mean(HD(DA,:));
HD_sub(4,:)=mean(HD(SA,:));
HD_sub(5,:)=mean(HD(Lim,:));
HD_sub(6,:)=mean(HD(Con,:));
HD_sub(7,:)=mean(HD(DMN,:));
HD_global=mean(HD);
end

