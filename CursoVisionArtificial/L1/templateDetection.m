    clear all
    clc
% Leer Imagen de archivo
    IMG = imread('patterns.png');
    TEMPLATE = imread('template.png');
    
 for y = 1:length(IMG(1,:,1))
    for x = 1:length(IMG(:,1,1))
        TempArea = 0;
        
        if(length(TEMPLATE(1,:))+y<=length(IMG(1,:,1)))
            nj = length(TEMPLATE(1,:));
        else
            nj = length(IMG(1,:,1)) - y;
        end
        if(length(TEMPLATE(:,1))+x<=length(IMG(:,1,1)))
            ni = length(TEMPLATE(:,1));
        else
            ni = length(IMG(:,1,1)) - x;
        end
        for j = 1:nj
            for i = 1:ni;
                Diff(i,j) = 0.5*(IMG(x+i,y+j)-TEMPLATE(i,j))^2
            end
        end
        OUT(x,y)=sum(sum(Diff));
        
    end
 end
 