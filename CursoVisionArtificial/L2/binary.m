% Limpiar Workspace
    clear all
    clc
% Leer Imagen de archivo
    IMG = im2double(imread('bg.png'));
    TEMPLATE = im2double(imread('bg0.png'));

    for i = 1:length(TEMPLATE(:,1,1))
        for j = 1:length(TEMPLATE(1,:,1))
            DAVID(i,j) = sum(TEMPLATE(i,j,:));
        end
    end
    
    for i = 2:length(TEMPLATE(:,1,1))-1
        for j = 2:length(TEMPLATE(1,:,1))-1
            xLBP11 = ceil(max(0,DAVID(i-1,j-1)-DAVID(i,j)));
            xLBP12 = ceil(max(0,DAVID(i,j-1)-DAVID(i,j)));
            xLBP13 = ceil(max(0,DAVID(i+1,j-1)-DAVID(i,j)));
            
            xLBP21 = ceil(max(0,DAVID(i-1,j)-DAVID(i,j)));
            xLBP22 = ceil(max(0,DAVID(i,j)-DAVID(i,j)));
            xLBP23 = ceil(max(0,DAVID(i+1,j)-DAVID(i,j)));
            
            xLBP31 = ceil(max(0,DAVID(i-1,j+1)-DAVID(i,j)));
            xLBP32 = ceil(max(0,DAVID(i,j+1)-DAVID(i,j)));
            xLBP33 = ceil(max(0,DAVID(i+1,j+1)-DAVID(i,j)));
            DAVID_LBP(i,j) = sum([xLBP11*2^7 xLBP12*2^6 xLBP13*2^5 ...
                                xLBP21*2^4 xLBP23*2^3 ...
                                xLBP31*2^2 xLBP32*2^1 xLBP33*2^0]);
        end
    end
    T = DAVID_LBP(:);
    hist(double(T))
    DAVID_LBP = uint8(DAVID_LBP);