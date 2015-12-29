function im=displayRGB(filename)
image=imread(filename);
width=size(image,1);
length=size(image,2);
ratio=800/max(width,length);
width2=round(ratio*width);
length2=round(ratio*length);
[mgx,mgy]=meshgrid(width,length);
[mgx2,mgy2]=meshgrid(1:width2,1:length2);
image2=interp2(image,mgx2,mgy2,'cubic');
image2=image;
imageR=image2; imageR(:,:,2)=0; imageR(:,:,3)=0;
imageG=image2; imageG(:,:,1)=0; imageG(:,:,3)=0;
imageB=image2; imageB(:,:,1)=0; imageB(:,:,2)=0;
im=[image,imageR;imageG,imageB];
image(im);
end
