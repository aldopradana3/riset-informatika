function [feat_disease, seg_img] = extract_features(I, resize_h, resize_w)

    ycbcr = rgb2ycbcr(I);
    cr = ycbcr(:,:,3);
    cr(cr > 142 & cr < 160) = 255;
    cr(cr ~= 255) = 0;
    bw = im2bw(cr);
    bw = imopen(bw, strel('disk', 2));
    bw = imclose(bw, strel('disk', 4));
    bw = imdilate(bw, strel('disk', 1));
    bw = imerode(bw, strel('disk', 2));
    bw = imclose(bw, strel('disk', 6));

    bw_3l = uint8(cat(3, bw, bw, bw));

    seg_img = I .* bw_3l;

    seg_img = imresize(seg_img, [resize_h, resize_w]);

    disease_img = seg_img;

    img_gray = rgb2gray(seg_img);

    glcms = graycomatrix(img_gray);

    stats = graycoprops(glcms, 'Contrast Correlation Energy Homogeneity');
    Contrast = stats.Contrast;
    Correlation = stats.Correlation;
    Energy = stats.Energy;
    Homogeneity = stats.Homogeneity;

    Mean = mean2(disease_img);
    Standard_Deviation = std2(disease_img);

    Entropy = entropy(disease_img);

    RMS = mean2(rms(seg_img));

    Variance = mean2(var(double(disease_img)));

    a = sum(double(disease_img(:)));
    Smoothness = 1 - (1 / (1 + a));

    Kurtosis = kurtosis(double(disease_img(:)));

    Skewness = skewness(double(disease_img(:)));

    m = size(disease_img, 1);
    n = size(disease_img, 2);
    in_diff = 0;
    for i = 1:m
        for j = 1:n
            temp = disease_img(i, j) / (1 + (i - j)^2);
            in_diff = in_diff + temp;
        end
    end
    IDM = double(in_diff);

    feat_disease = [Contrast, Correlation, Energy, Homogeneity, Mean, Standard_Deviation, Entropy, RMS, Variance, Smoothness, Kurtosis, Skewness, IDM];
end
