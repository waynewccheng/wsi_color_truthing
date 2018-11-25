function XYZ2monochrome (fn,sizey,sizex)

load([fn 'XYZ'])

XYZ2 = reshape(XYZ,sizey,sizex,3);
Y = XYZ2(:,:,2);
im2 = repmat(Y,1,1,3);
image(im2)
imwrite(im2,[fn 'monochrome.tif'])

end
