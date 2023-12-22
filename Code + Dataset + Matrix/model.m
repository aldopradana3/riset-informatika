clear, clc, close all;

resize_h = 100 * 2;
resize_w = 342 * 2;

class_start = 1;
class_end = 3;
item_start = 1;
item_end = 32;

k = 1;
total_correct = 0;

for c = class_start:class_end
    for n = item_start:item_end
        class_str = int2str(c);
        img_name = ['datasets\', class_str, '\', class_str, ' (', int2str(n), ').jpg'];
        img = imread(img_name);
        [feats, seg_img] = extract_features(img, resize_h, resize_w);
        P(k, :) = feats;
        T(k, 1) = c;
        disp(['training: ', num2str(100 * k / ((class_end - class_start + 1) * (item_end - item_start + 1))), '%']);
        k = k + 1;
    end
end

net = fitcecoc(P, T);
disp('model has trained')

test_class_start = 1;
test_class_end = 3;
test_item_start = 33;
test_item_end = 40;

k = 1;
correct_count = 0;
class_counts = [];

for c = test_class_start:test_class_end
    for n = test_item_start:test_item_end
        class_str = int2str(c);
        img_name = ['datasets\', class_str, '\', class_str, ' (', int2str(n), ').jpg'];
        test_img = imread(img_name);
        [test_feats, ~] = extract_features(test_img, resize_h, resize_w);
        prediction = predict(net, test_feats);
        if prediction == c
            correct_count = correct_count + 1;
        end
        disp(['testing: ', num2str(100 * k / ((test_class_end - test_class_start + 1) * (test_item_end - test_item_start + 1))), '%']);
        k = k + 1;
    end
    class_counts = [class_counts, correct_count];
    total_correct = total_correct + correct_count;
    correct_count = 0;
end

accuracy_rate = total_correct / (k - 1) * 100;
disp(['test accuracy: ', num2str(accuracy_rate), '%']);

disp(['Correctly predicted class distribution: ']);
disp(['Total right/Total number: ', num2str(total_correct), '/', num2str(k - 1)]);
disp(['Class 1: Bacterial leaf blight, right: ', num2str(class_counts(1)), '/', num2str(total_correct)])
disp(['Class 2: Brown spot, right: ', num2str(class_counts(2)), '/', num2str(total_correct)])
disp(['Class 3: Leaf smut, right: ', num2str(class_counts(3)), '/', num2str(total_correct)])
