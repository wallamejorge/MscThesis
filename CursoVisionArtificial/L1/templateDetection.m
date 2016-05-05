  
% Limpiar Workspace
    clear all
    clc
% Leer Imagen de archivo
    IMG = imread('patterns2.png');
    TEMPLATE = imread('template2.png');
    np = 0;
 for x = 1:length(IMG(1,:,1))
    for y = 1:length(IMG(:,1,1))
        
        ly = length(TEMPLATE(:,1,1));
        lx = length(TEMPLATE(1,:,1));
        
        ni = lx/2 - mod(lx,2)/2;
        nj = ly/2 - mod(ly,2)/2;
        Diff = 0.0;
        
        for i = x - ni : x + ni 
            for j = y - nj  : y + nj 
                
                pi = i - x + ni + 1;
                pj = j - y + nj + 1;
                
                if(i<=0 || j<=0 || j>=length(IMG(:,1,1)) || i>=length(IMG(1,:,1)) )
                   Diff = Diff;
                else
                   Temp = (abs(im2double(IMG(j,i,:))-im2double(TEMPLATE(pj,pi,:))));
                   Diff = Temp(1,1,1) + Temp(1,1,2) + Temp(1,1,3) ;  
                end
                str = ['X=['  num2str(x)  '];'  ' Y=['  num2str(y)  ']; '...
                       'i=['  num2str(i)  '];'  ' j=['  num2str(j)  ']; '];
                disp(str);
            end
        end
        OUT(y,x)=Diff;
    end
 end
 
         OUT =uint8(255*OUT/max(max(OUT)));