s1 = serial('COM1');
set(s1,'BaudRate',9600);
fopen(s1);
%%
s2 = serial('COM2');
set(s2,'BaudRate',9600);
fopen(s2);
%%
while 1==1
fprintf(s1,num2str(rand()));
fscanf(s2)
%out = fscanf(s);
end
%%
fclose(s)
delete(s)
clear s