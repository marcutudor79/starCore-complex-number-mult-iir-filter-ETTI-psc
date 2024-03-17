% nr total de numere in vector de intrare + 2
DataBlockSize=34;

% generare vector numere complexe
in = rand(1,DataBlockSize);

% se genereaza un fisier input.dat in care se vor scrie datele de intrare
fid=fopen('..\input.dat','w','b');

% se scrie vectorul de intrare in 'in' in fisier
fwrite(fid,in.*2^15,'int16');
fclose(fid);

%% se ruleaza proiectul CW apoi se continua in Matlab
% se citesc datele de iesire din programul in C
fid=fopen('..\output.dat','r','b');
out_cw=fread(fid, DataBlockSize-2, 'int16');
out_cw=out_cw/(2^15);
fclose(fid);

% se recalculeaza datele de iesire in matlab
sc_re = in(1);
sc_im = in(2);
i     = 3;
while i <= DataBlockSize
    out(i-2) = ((in(i)   * sc_re) - (in(i+1) * sc_im)) / 2;
    out(i-1) = ((in(i+1) * sc_re) + (in(i)   * sc_im)) / 2;
    i = i + 2;
end
out = out';

% se afiseaza in consola side by side vectorul calculat in matlab
% versus vectorul citit din fisierul de iesire output.dat al programului 
% in C din CodeWarrior
[out, out_cw]

% se calculeaza vectorul de erori relative
for i = 1:(DataBlockSize - 2)
    err_relative(i) = (out_cw(i) - out(i)) / out(i);
end

% se afiseaza un grafic al valorilor erorii relative
plot(err_relative)
title('relative error')





