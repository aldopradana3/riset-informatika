# TOPIK PENELITIAN
## PENELITIAN PERTAMA
### Judul
Monitoring and Controlling Rice Diseases Using Image Processing Techniques
### Topik
Teknik Pemrosesan Citra
### Ringkasan
Penelitian ini dilakukan sebagai solusi untuk menghindari fenomena penyakit tanaman padi, dimana tanaman padi merupakan tanaman penting sebagai kebutuhan pokok masyarakat India. Melalui penerapan sistem, sebuah teknik untuk mendiagnosa penyakit tanaman padi dihadirkan dengan hasil yang cukup akurat dan tepat. Hal tersebut dilakukan sebagai bentuk untuk mengatasi keterbatasan penglihatan manusia jika melakukannya dengan cara yang manual. Pada penelitian ini, terdapat empat jenis tanaman padi yang diklasifikasikan, seperti penyakit Rice Bacterial Blight, Rice Blast, Rice Brown Spot, dan Rice Sheath Rot. Berbagai fitur seperti bentuk dan warna bagian daun yang terkena penyakit diekstraksi dengan mengembangkan algoritma. Semua fitur yang diekstraksi digabungkan sesuai dengan jenis penyakit, dan penyakit diklasifikasikan menggunakan Minimum Distance Classifier (MDC) dan k-Nearest Neighbor classifier (k-NN).
### Pertanyaan 
1.	Bagaimana kinerja Minimum Distance Classifier (MDC) dibandingkan dengan k-Nearest Neighbor classifier (k-NN) dalam mengklasifikasikan jenis-jenis penyakit pada tanaman padi?
2.	Apakah terdapat perbedaan signifikan dalam akurasi klasifikasi antara penyakit hawar bakteri, blast, bercak coklat, dan busuk seludang menggunakan teknik pemrosesan citra yang diusulkan?
3.	Bagaimana teknik ini dapat diterapkan dan dioptimalkan untuk situasi lapangan yang berbeda atau adanya variasi kondisi pertanian?
## Teori
1.	Menggunakan morfologi matematika untuk dilakukan segmentasi gambar pada citra dari kamera digital yang sudah didigitalkan. Fitur-fitur seperti bentuk, tekstur, dan warna diekstraksi dan digunakan sebagai input untuk klasifikasi.
2.	Sebagai upaya untuk menghilangkan noise, terdapat teknik yang dapat digunakan yaitu teknik pengisian wilayah. Fitur bentuk dan warna diekstraksi menggunakan analisis tekstur, dan klasifikasi dilakukan menggunakan aturan produksi.
3.	Untuk memeriksa kinerja algoritma segmentasi, digunakan berbagai ruang warna. Algoritma menunjukkan hasil segmentasi terbaik dalam ruang warna YCbCr. Lalu, ruang warna YCbCr dipilih untuk mentransformasi gambar warna pada penelitian yang dilakukan.
4.	Back propagation neural network (BPNN) dapat digunakan untuk memeriksa apakah daun padi sehat atau terinfeksi. Setelah itu, dapat mengimplementasi entropy fuzzy untuk mengekstraksi fitur dan jaringan saraf probabilitas (PNN) untuk mengklasifikasikan empat penyakit berbeda.
## PENELITIAN KEDUA
### Judul
Detecting disease in Chilli Plants Using K-Means Segmented Support Vector Machine
### Topik
Teknik Pemrosesan Citra
### Ringkasan
Deteksi dini penyakit tanaman sangat penting untuk menghindari kerugian dalam hasil dan kualitas produk pertanian. Studi penyakit tanaman telah banyak diteliti untuk mendeteksi ketidaknormalan dalam pertumbuhan tanaman menggunakan pola yang dapat diamati secara visual pada tanaman. Pemantauan tanaman dan deteksi penyakit diperlukan untuk memastikan keberlanjutan dalam pertanian. Namun, monitoring penyakit tanaman secara manual seringkali sangat sulit karena membutuhkan deteksi secara real-time dan presisi. Pemrosesan citra umumnya digunakan untuk deteksi penyakit tanaman yang melibatkan akuisisi gambar, pra-pemrosesan, segmentasi, ekstraksi fitur, dan klasifikasi. Dalam penelitian ini, diusulkan algoritma pemrosesan citra berbasis kecerdasan buatan untuk mendeteksi penyakit pada tanaman cabai menggunakan gambar daunnya. Solusi yang diusulkan berfokus pada penggunaan algoritma k-means clustering untuk segmentasi gambar dan membandingkan berbagai algoritma Support Vector Machine (SVM) untuk klasifikasi.
### Pertanyaan
1.	Bagaimana algoritma segmentasi K-Means dapat meningkatkan efektivitas dalam mendeteksi penyakit pada tanaman cabai dalam konteks penelitian ini?
2.	Bagaimana karakteristik penyakit pada tanaman cabai dapat diidentifikasi dan dibedakan dengan akurat menggunakan kombinasi algoritma K-Means untuk segmentasi dan SVM untuk klasifikasi?
3.	Bagaimana pengaruh ketika ada variasi dalam tingkat keparahan penyakit yang tinggi terhadap akurasi deteksi menggunakan pendekatan ini?
### Teori 
1.	K-means clustering adalah contoh dari pembelajaran mesin tanpa pengawasan yang melibatkan pengelompokan dataset tanpa pengetahuan tentang kelas yang diberi label. K-means clustering merupakan algoritma partisi data yang iteratif, sehingga menetapkan sejumlah observasi ke salah satu dari klister k yang ditentukan oleh centroid.
2.	Support Vector Machine atau SVM adalah salah satu dari supervised machine learning yang paling banyak digunakan. Untuk supervised learning, sebagai upaya dalam menguji algoritma, diperlukan data pelatihan dengan kelas yang diberi label untuk melatih algoritma. SVM cukup mirip dengan algoritma diskriminan, tetapi yang membuat SVM unggul adalah karena SVM membangun pemisah margin maksimum yang menghasilkan generalisasi yang lebih baik dibandingkan dengan klasifikasi diskriminan.
