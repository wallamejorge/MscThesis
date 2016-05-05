function ImgOUT = mathOperations(ImgIN,clk,nx,ny)

    ImgOUT = [nx,ny];
    for i=1:nx
       for j=1:ny
          
           ImgOUT(i,j) = 255 - ImgIN(i,j);
           
       end
    end


end