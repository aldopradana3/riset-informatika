# METODE PENELITIAN
### Judul
Image recognition of four rice leaf diseases based on deep learning and support vector machine
### Link
https://www.sciencedirect.com/science/article/abs/pii/S016816992030795X 
# METODOLOGI PENELITIAN
### Judul
Monitoring and Controlling Rice Diseases Using Image Processing Techniques
### Link
https://ieeexplore.ieee.org/document/7915015 
# METODE PENELITIAN DETEKSI PENYAKIT TANAMAN PADI MENGGUNAKAN KLASIFIKASI SVM
## 1.	Pra Pemrosesan Data
Pada tahap ini dilakukan resize ukuran untuk seluruh gambar agar memiliki ukuran yang sama. Setelah itu dilakukan transformasi warna dari RGB ke YCbCr karena bagian yang terinfeksi pada tanaman padi akan terlihat pada bidang warna Cr.
## 2.	Segmentasi
Pada tahap ini dilakukan berdasarkan pemilihan bidang warna Cr karena bidang warna tersebut menampilkan bagian tanaman padi yang terinfeksi. Lalu bidang warna Cr dimanfaatkan untuk mengubah bagian tersebut menjadi hitam putih atau format warna BW. Setelah itu, dilakukan serangkaian operasi morfologi, seperti operasi pembukaan dan penutupan ekspansi korosi pada warna BW untuk mengekstraksi bagian yang terinfeksi dengan lebih baik. Kemudian dilakukan rekonstruksi citra asli RGB berdasarkan bagian terinfeksi yang baru diekstraksi untuk mendapatkan citra RGB dari bagian yang terinfeksi.
## 3.	Ekstraksi Fitur
Pada tahap ini dilakukan ekstraksi beberapa fitur dari citra RGB bagian yang terinfeksi melalui Gray Level Co-occurrence Matrix (GLCM). Beberapa fitur tersebut yang dilakukan ekstraksi di antara lain sebagai berikut.
•	Contras
•	Correlation
•	Energy
•	Homogeneity
•	Mean
•	Standard Deviation
•	Entropy
•	Root Mean Square
•	Variance
•	Smoothness
•	Kurtosis
•	Skewness
•	Inverse Difference Moment
## 4.	Klasifikasi
Pada tahap ini menggunakan klasifikasi Support Vector Machine (SVM), yang mana tahap ini memiliki dua fase, yaitu fase pelatihan dan fase testing untuk mengidentifikasi tiga jenis penyakit tanaman padi, seperti rice bacterial blight, rice brown spot, dan leaf smut of rice.
a.	Fase Pelatihan
Fase ini menggunakan vektor fitur untuk melatih SVM agar dapat melakukan multiklasifikasi.
b.	Fase Testing
Fase ini mengekstrak vektor fitur dan menggunakan SVM yang sudah terlatih untuk mengidentifikasi jenis penyakit.
