# Riset Informatika
Aldo Pradana Ariando (20081010110)
## Deteksi Penyakit Tanaman Padi Menggunakan Klasifikasi SVM
Padi merupakan tanaman penting di Indonesia karena padi adalah kebutuhan pokok bagi masyarakat negara Indonesia. Oleh karena itu, jika tanaman padi yang tumbuh mengalami penyakit yang menyebabkan kerugian pada perekonomian maka akan berdampak juga terhadap kelangsungan hidup masyarakat Indonesia. Solusi untuk menghindari fenomena tersebut yaitu dengan mendeteksi secara dini terhadap pertumbuhan tanaman padi yang ada, akan tetapi jika dilakukan deteksi secara manual, maka akan sulit dan hasil yang diperoleh tidak akurat. Salah satu teknik untuk mendiagnosis dan mengklasifikasikan penyakit padi telah diusulkan dalam penelitian ini. Sebuah tanaman padi yang dideteksi penyakitnya akan memperoleh sebuah output berupa bagian penyakit pada tanaman yang telah diidentifikasikan dan diklasifikasikan jenis penyakitnya. Selain itu, deteksi ini akan menghasilkan output berupa segmentasi gambar menggunakan bidang warna YCbCr untuk mengenali bagian tanaman yang menjadi penyakit. Area yang berbeda seperti bentuk, dan warna bagian daun yang sakit telah diekstraksi berdasarkan beberapa vektor fitur melalui GLCM. Support Vector Machine (SVM) digunakan untuk pengklasifikasian bagian penyakit dengan menerapkan multi-klasifikasi pada fase pelatihannya. Output total akurasi berdasarkan tiga jenis penyakit yang dideteksi pada penelitian ini adalah 70,833% serta didapatkan distribusi kelas yang diprediksi dengan benar sebesar 17 / 24, dimana hasil tersebut sudah cukup baik dalam mendeteksi suatu penyakit pada tanaman padi.
### Masalah
1. Penyakit tanaman padi dapat menyebabkan kerugian besar dalam produksi padi. Identifikasi dan penanganan dini penyakit dapat membantu mencegah penyebaran yang cepat dan mengurangi kerugian hasil.
Ketidakmampuan Identifikasi Manual yang Cepat:

2. Identifikasi manual penyakit tanaman padi memerlukan waktu yang lama dan dapat kurang akurat. Sistem otomatis yang dapat mendeteksi penyakit dengan cepat dapat membantu petani atau peneliti dalam pengambilan keputusan yang lebih efisien.
Keterbatasan Tenaga Kerja:

3. Keberlanjutan pertanian dapat terganggu jika tenaga kerja yang terbatas harus mengidentifikasi penyakit secara manual. Sistem otomatis dapat mengatasi keterbatasan ini dan meningkatkan efisiensi pertanian.
Pentingnya Deteksi Dini:

4. Deteksi dini penyakit tanaman padi sangat penting untuk pencegahan penyebaran penyakit. Sistem otomatis yang mampu mendeteksi gejala penyakit pada tahap awal dapat membantu mengurangi dampak negatif pada hasil panen.
Variabilitas Lingkungan:

5. Variabilitas lingkungan, seperti perubahan suhu atau kelembaban, dapat memengaruhi perkembangan penyakit tanaman. Model deteksi penyakit yang sensitif terhadap faktor-faktor lingkungan ini dapat menjadi solusi yang efektif.
### Teori
#### Bidang Warna YCbCr
Bidang warna YCbCr adalah representasi warna yang memisahkan luminansi (Y) dan dua komponen warna chrominance (Cb dan Cr). Komponen Y menyatakan tingkat kecerahan atau luminansi, sedangkan Cb dan Cr menyatakan perbedaan warna biru dan merah terhadap warna abu-abu.
#### GLCM (Gray Level Co-occurrence Matrix)
GLCM adalah metode ekstraksi fitur yang digunakan untuk menganalisis tekstur dalam citra. Matriks ini menyajikan seberapa sering sepasang piksel dengan tingkat keabuan tertentu muncul bersamaan di arah tertentu dalam citra.
#### Support Vector Machine (SVM)
SVM adalah algoritme klasifikasi yang dapat digunakan untuk memisahkan dua kelas dengan mencari hyperplane optimal. SVM berusaha untuk menemukan batas keputusan yang memaksimalkan margin antara dua kelas.
### Kebaruan
Penelitian ini memberikan kontribusi baru dalam deteksi penyakit tanaman padi dengan mengintegrasikan pendekatan yang inovatif. Dengan menggunakan teori bidang warna YCbCr, penelitian ini memanfaatkan bidang warna tersebut untuk menemukan bagian tanaman padi yang terinfeksi. Selanjutnya, ekstraksi fitur GLCM diterapkan untuk menganalisis tekstur citra, memberikan informasi tambahan terkait dengan distribusi dan pola piksel yang dapat berhubungan dengan keberadaan penyakit.
Penelitian ini memperkaya analisis citra dengan memanfaatkan fitur-fitur GLCM, seperti Contras, Correlation, Energy, Homogeneity, Mean, Standard Deviation, Entropy, Root Mean Square, Variance, Smoothness, Kurtosis, Skewness, dan Inverse Difference Moment. Terakhir, klasifikasi SVM digunakan untuk mendeteksi jenis penyakit tanaman padi, yang mana tahap ini memiliki dua fase, yaitu fase pelatihan dan fase testing untuk mengidentifikasi tiga jenis penyakit tanaman padi, seperti rice bacterial blight, rice brown spot, dan leaf smut of rice.
### Metode
#### 1.	Pra Pemrosesan Data
Pada tahap ini dilakukan resize ukuran untuk seluruh gambar agar memiliki ukuran yang sama. Setelah itu dilakukan transformasi warna dari RGB ke YCbCr karena bagian yang terinfeksi pada tanaman padi akan terlihat pada bidang warna Cr.
#### 2.	Segmentasi
Pada tahap ini dilakukan berdasarkan pemilihan bidang warna Cr karena bidang warna tersebut menampilkan bagian tanaman padi yang terinfeksi. Lalu bidang warna Cr dimanfaatkan untuk mengubah bagian tersebut menjadi hitam putih atau format warna BW. Setelah itu, dilakukan serangkaian operasi morfologi, seperti operasi pembukaan dan penutupan ekspansi korosi pada warna BW untuk mengekstraksi bagian yang terinfeksi dengan lebih baik. Kemudian dilakukan rekonstruksi citra asli RGB berdasarkan bagian terinfeksi yang baru diekstraksi untuk mendapatkan citra RGB dari bagian yang terinfeksi.
#### 3.	Ekstraksi Fitur
Pada tahap ini dilakukan ekstraksi beberapa fitur dari citra RGB bagian yang terinfeksi melalui Gray Level Co-occurrence Matrix (GLCM). Beberapa fitur tersebut yang dilakukan ekstraksi di antara lain sebagai berikut.
#### 4.	Klasifikasi
Pada tahap ini menggunakan klasifikasi Support Vector Machine (SVM), yang mana tahap ini memiliki dua fase, yaitu fase pelatihan dan fase testing untuk mengidentifikasi tiga jenis penyakit tanaman padi, seperti rice bacterial blight, rice brown spot, dan leaf smut of rice.

a.	Fase Pelatihan
Fase ini menggunakan vektor fitur untuk melatih SVM agar dapat melakukan multiklasifikasi.

b.	Fase Testing
Fase ini mengekstrak vektor fitur dan menggunakan SVM yang sudah terlatih untuk mengidentifikasi jenis penyakit.
### Referensi
S. P. Singh, K. Pritamdas, K. J. Devi, and S. D. Devi, “Custom Convolutional Neural Network for Detection and Classification of Rice Plant Diseases,” Procedia Comput. Sci., vol. 218, no. 2022, pp. 2026–2040, 2022, doi: 10.1016/j.procs.2023.01.179.

P. K. Sethy, N. K. Barpanda, A. K. Rath, and S. K. Behera, “Deep feature based rice leaf disease identification using support vector machine,” Comput. Electron. Agric., vol. 175, no. May, p. 105527, 2020, doi: 10.1016/j.compag.2020.105527.

N. Manohar and K. J. Gowda, “Image Processing System based Identification and Classification of Leaf Disease: A Case Study on Paddy Leaf,” Proc. Int. Conf. Electron. Sustain. Commun. Syst. ICESC 2020, no. Icesc, pp. 451–457, 2020, doi: 10.1109/ICESC48915.2020.9155607.

F. Jiang, Y. Lu, Y. Chen, D. Cai, and G. Li, “Image recognition of four rice leaf diseases based on deep learning and support vector machine,” Comput. Electron. Agric., vol. 179, no. October, p. 105824, 2020, doi: 10.1016/j.compag.2020.105824.

A. A. Joshi and B. D. Jadhav, “Monitoring and controlling rice diseases using Image processing techniques,” Int. Conf. Comput. Anal. Secur. Trends, CAST 2016, pp. 471–476, 2017, doi: 10.1109/CAST.2016.7915015.
### Lampiran
#### Gambar Pendukung
![1](https://github.com/aldopradana3/riset-informatika/assets/87022323/5444a776-954a-4df3-9abf-7ad9e8829df9)

![2](https://github.com/aldopradana3/riset-informatika/assets/87022323/6a0aae92-7122-48ea-aa82-70bbd0610471)

![3](https://github.com/aldopradana3/riset-informatika/assets/87022323/1071cd56-d59d-4acc-be8f-27c1fb6a39e7)
#### Confusion Matrix
![confusion_matrix](https://github.com/aldopradana3/riset-informatika/assets/87022323/17d7b5dc-884b-428b-9b8a-8e2342c43817)

