clear, clc, close all;

% Load model
run model % Pastikan model.mat sesuai dengan nama file model Anda

% Inisialisasi variabel
resize_h = 100 * 2;
resize_w = 342 * 2;

% Ambil variabel-variabel yang diperlukan dari hasil model
test_class_start = 1;
test_class_end = 3;
test_item_start = 33;
test_item_end = 40;

k = 1;
total_correct = 0;
class_counts = [];

% Loop pengujian
for c = test_class_start:test_class_end
    for n = test_item_start:test_item_end
        class_str = int2str(c);
        img_name = ['datasets\', class_str, '\', class_str, ' (', int2str(n), ').jpg'];
        test_img = imread(img_name);
        [test_feats, ~] = extract_features(test_img, resize_h, resize_w);
        prediction = predict(net, test_feats);
        if prediction == c
            total_correct = total_correct + 1;
        end
        disp(['Testing: ', num2str(100 * k / ((test_class_end - test_class_start + 1) * (test_item_end - test_item_start + 1))), '%']);
        k = k + 1;
    end
    class_counts = [class_counts, total_correct];
    total_correct = 0;
end

% Hitung confusion matrix
confusion_matrix = zeros(test_class_end - test_class_start + 1);

for c = test_class_start:test_class_end
    for n = test_item_start:test_item_end
        class_str = int2str(c);
        img_name = ['datasets\', class_str, '\', class_str, ' (', int2str(n), ').jpg'];
        test_img = imread(img_name);
        [test_feats, ~] = extract_features(test_img, resize_h, resize_w);
        prediction = predict(net, test_feats);
        confusion_matrix(c, prediction) = confusion_matrix(c, prediction) + 1;
    end
end

% Tampilkan hasil
disp('Confusion Matrix:');
disp(confusion_matrix);

% Hitung dan tampilkan akurasi
accuracy_rate = sum(diag(confusion_matrix)) / sum(confusion_matrix(:)) * 100;
disp(['Test Accuracy: ', num2str(accuracy_rate), '%']);

% ... (kode sebelumnya)

% Tampilkan dan simpan confusion matrix sebagai gambar
figure;
imagesc(confusion_matrix);
colorbar;
colormap('jet'); % Anda dapat mengganti 'jet' dengan peta warna lainnya
title('Confusion Matrix');
xlabel('Predicted Class');
ylabel('True Class');

% Tambahkan label untuk setiap kelas
class_labels = cell(1, test_class_end - test_class_start + 1);
class_names = {'Bacterial leaf blight', 'Brown spot', 'Leaf smut'};
for i = test_class_start:test_class_end
    class_labels{i} = class_names{i};
end
xticks(test_class_start:test_class_end);
yticks(test_class_start:test_class_end);
xticklabels(class_labels);
yticklabels(class_labels);

% Tambahkan teks dengan jumlah angka di setiap sel
[m, n] = size(confusion_matrix);
for i = 1:m
    for j = 1:n
        text(j, i, num2str(confusion_matrix(i, j)), 'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'black');
    end
end

% Tampilkan akurasi pada gambar
accuracy_str = ['Accuracy: ', num2str(accuracy_rate), '%'];
text(0.5, -0.1, accuracy_str, 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom', 'FontSize', 12, 'FontWeight', 'bold', 'Color', 'black');

% Simpan gambar
saveas(gcf, 'confusion_matrix.png');