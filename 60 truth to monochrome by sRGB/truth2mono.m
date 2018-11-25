tissue = 'colon';
im = imread([tissue '_truth.tif']);
im2 = rgb2gray(im);
im3 = repmat(im2,[1 1 3]);
image(im3)
imwrite(im3,[tissue '_mono.tif'])

tissue = 'kidney';
im = imread([tissue '_truth.tif']);
im2 = rgb2gray(im);
im3 = repmat(im2,[1 1 3]);
image(im3)
imwrite(im3,[tissue '_mono.tif'])

tissue = 'skin';
im = imread([tissue '_truth.tif']);
im2 = rgb2gray(im);
im3 = repmat(im2,[1 1 3]);
image(im3)
imwrite(im3,[tissue '_mono.tif'])