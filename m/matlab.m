N=40;
n=0:N-1;
a=0.5*cos(2*pi/12*n);
b=0.5*cos(2*pi/5*n);

fid=fopen('..\a.dat','w','b');
fwrite(fid,a.*2^15,'int16');
fclose(fid);

fid=fopen('..\b.dat','w','b');
fwrite(fid,b.*2^15,'int16');
fclose(fid);

res_m=sum(a.*b)
c_m=a.*b;

%% se ruleaza proiectul CW apoi se continua in Matlab

fid=fopen('..\result.dat','r','b');
res_cw=fscanf(fid,'%d')
res_cw=res_cw/(2^15)
fclose(fid);

fid=fopen('..\c.dat','r','b');
c_cw=fread(fid,N,'int16');
c_cw=c_cw/(2^15);
fclose(fid);

[a' b' c_m' c_cw]
