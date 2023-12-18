clear, clc, close all;

class_str = int2str(3);
item_num = 33;

img_name = ['datasets\', class_str, '\', class_str, ' (', int2str(item_num), ').jpg'];
I = imread(img_name);
figure, imshow(I), title('RGB');

resize_h = 100;
resize_w = 342;

ycbcr = rgb2ycbcr(I);
cr = ycbcr(:, :, 3);
cr(cr > 142 & cr < 160) = 255;
cr(cr ~= 255) = 0;
bw = im2bw(cr);
bw = imopen(bw, strel('disk', 2));
bw = imclose(bw, strel('disk', 4));
bw = imdilate(bw, strel('disk', 1));
bw = imerode(bw, strel('disk', 2));
bw = imclose(bw, strel('disk', 6));

figure, imshow(bw), title('bw');

bw_3l = uint8(cat(3, bw, bw, bw));

seg_img = I .* bw_3l;

figure, imshow(seg_img), title('seg img');

bw_img = imresize(bw, [resize_h, resize_w]);

figure, imshow(bw_img), title('bw img disease');

seg_img = imresize(seg_img, [resize_h, resize_w]);

figure, imshow(seg_img), title('resize seg img');

bw_seg_img = im2bw(255 * seg_img);

figure, imshow(bw_seg_img), title('bw seg img');
