A=cwurData1.institution(cwurData1.year==2014 & cwurData1.world_rank<=10);
fid = fopen('top10.txt','wt');
fprintf(fid, '%s\n',A);
fclose(fid);