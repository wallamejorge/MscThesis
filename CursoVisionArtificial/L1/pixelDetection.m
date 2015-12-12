% Leer Imagen de archivo
    IMG = imread('image.PNG');
% Definir Clase Piel
    Rp = 117.5;
    Gp = 66;
    Bp = 38.5;
% Definir Delta S
    sR = 113/2;
    sG = 77/2;
    sB = 80/2;
% Recorrer Matriz
IMG_UNSAT = [];
for j = 1:length(IMG(1,:,1))
    for i = 1:length(IMG(:,1,1))
        p = [double(IMG(i,j,:))];
        pR = p(1);
        pG = p(2);
        pB = p(3);
        IMG_UNSAT(i,j,:)=[pR,pG,pB]/sum(p);
    end
end
%%
IMG_ORG = IMG;
IMG = IMG;

for j = 1:length(IMG(1,:,1))
    for i = 1:length(IMG(:,1,1))
        p = [double(IMG(i,j,:))];
        pR = p(1);
        pG = p(2);
        pB = p(3);
        
        if((pR<Rp+sR && pR>Rp-sR) && (pG<Gp+sG && pG>Gp-sG) && (pB<Bp+sB && pB>Bp-sB))
            K(i,j) = 255;
        else
            K(i,j) = 0;
        end
    end
end

imshow(K)
