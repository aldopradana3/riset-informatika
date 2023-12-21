# METODE KUANTITATIF
## DETEKSI PENYAKIT TANAMAN PADI MENGGUNAKAN KLASIFIKASI SVM
### 1.	Silogisme
#### A.	Premis Major (Umum)
Premis major adalah pernyataan umum atau prinsip utama yang menjadi dasar argumen. Dalam konteks penelitian ini, premis major dapat berbunyi: "SVM (Support Vector Machine) memiliki kemampuan klasifikasi yang tinggi dalam pengolahan data kompleks."
#### B.	Premis Minor (Partikular)
Premis minor adalah pernyataan spesifik atau data yang mendukung premis major. Dalam penelitian ini, premis minor dapat berupa: "Penyakit pada tanaman padi dapat menyebabkan variasi pola warna dan tekstur pada daun yang dapat diidentifikasi melalui analisis citra."
#### C.	Kesimpulan
Kesimpulan adalah hasil logis dari kombinasi premis major dan minor. Dalam penelitian ini, kesimpulan dapat dirumuskan sebagai: "Dengan memanfaatkan kemampuan klasifikasi SVM dan menggunakan data citra untuk mengukur variasi pola warna dan tekstur pada daun tanaman padi, deteksi penyakit tanaman padi dapat dilakukan secara efektif dan akurat."
### 2.	Alat Analisis Kuantitatif
#### A.	Analisis Konten
Analisis konten melibatkan penelitian yang mendalam terhadap visual citra, dalam hal ini citra daun padi. Dalam konteks deteksi penyakit tanaman padi, ini mencakup:

•	Identifikasi Visual Citra:
Mengidentifikasi visual daun padi yang terinfeksi penyakit rice bacterial blight, rice brown spot, dan leaf smut of rice.

•	Segmentasi Citra:
Memisahkan citra yang teridentifikasi jenis penyakit tanaman padi dengan bagian yang tidak terinfeksi.

•	Ekstraksi Fitur:
Ekstraksi fitur dilakukan pada citra bagian penyakit tanaman padi yang telah ditransformasi bidang warnanya, sehingga dapat menggambarkan cukup jelas bagian yang terinfeksi.
#### B.	Analisis Sentimen
Analisis sentimen digunakan untuk mendapatkan pemahaman terhadap pandangan, respon, atau perasaan yang dimiliki oleh para petani terkait dengan proses deteksi penyakit pada tanaman padi menggunakan metode klasifikasi SVM. Hal ini melibatkan:

•	Peninjauan Umpan Balik Pengguna:
Menggali ulasan, komentar, dan umpan balik dari para petani terkait keakuratan dan kekurangan dari model deteksi penyakit tanaman padi.

•	Pengelompokan Sentimen:
Mengkategorikan tanggapan sebagai positif, negatif, atau netral membantu menilai sentimen umum terhadap hasil deteksi penyakit tanaman padi menggunakan klasifikasi SVM.
#### C.	Analisis Kasus
Penggunaan studi kasus bertujuan untuk menyelidiki secara mendalam pengalaman praktis dalam penerapan model deteksi penyakit tanaman padi dalam konteks kehidupan sehari-hari. Hal ini melibatkan:

•	Deskripsi Kasus:
Memberikan konteks, menyusun tujuan, dan menjelaskan latar belakang dari implementasi model deteksi penyakit tanaman padi yang presisi.

•	Analisis Hasil:
Mengevaluasi apakah model yang diterapkan berhasil atau tidak dalam menangani kasus tertentu.
### 3.	Statistik Inferensial
#### A.	Uji Hipotesis
Uji hipotesis dilakukan untuk menguji pernyataan tertentu dalam penelitian. Dalam penelitian "Deteksi Penyakit Tanaman Padi Menggunakan Klasifikasi SVM," uji hipotesis dapat melibatkan perbandingan antara tingkat akurasi deteksi untuk tiga jenis penyakit. Contoh hipotesis dapat berbunyi: "Ada perbedaan signifikan dalam akurasi deteksi antara rice bacterial blight, rice brown spot, dan leaf smut of rice." 
#### B.	Analisis Regresi
Analisis regresi digunakan untuk memahami hubungan antara satu atau lebih variabel independen dengan variabel dependen. Dalam penelitian ini, analisis regresi mungkin digunakan untuk mengevaluasi faktor-faktor yang berpengaruh pada keakuratan deteksi penyakit tanaman padi. Misalnya, "Sejauh apa variasi faktor-faktor tertentu seperti kondisi cuaca atau jenis tanah mempengaruhi performa deteksi SVM untuk setiap jenis penyakit?"
#### C.	Analisis Chi-Square
Analisis Chi-Square umumnya digunakan untuk menguji hubungan antara dua variabel kategorikal. Dalam konteks deteksi penyakit, dapat digunakan untuk menilai apakah ada keterkaitan antara jenis penyakit (rice bacterial blight, rice brown spot, leaf smut of rice) dengan tingkat keberhasilan deteksi menggunakan klasifikasi SVM. Contoh hipotesis Chi-Square bisa berbunyi "Tidak ada hubungan yang signifikan antara jenis penyakit dan tingkat keberhasilan deteksi."
 
## CONTOH PENELITIAN METODE KUANTITATIF
### Judul
Personality Classification of Facebook Users According to Big Five Personality Using SVM (Support Vector Machine) Method
### Link
https://www.sciencedirect.com/science/article/pii/S1877050920324650 
### Penjelasan
Dataset yang digunakan dalam penelitian ini diperoleh dengan menggunakan alat yang disebut ultimate-Facebook-scraper. Alat ini membantu mengumpulkan data dari setiap pengguna yang setuju untuk menjadi relawan dalam penelitian ini. Sebelum melakukan pengambilan data, pertama-tama, kami mendistribusikan kuesioner BFI (Big Five Inventory) yang digunakan untuk mengetahui kepribadian dominan dari para relawan. BFI adalah salah satu alat pengukur kepribadian Big Five yang terdiri dari 44 pernyataan yang dikembangkan oleh John pada tahun 1990. Alat pengukuran Big Five ini telah diterjemahkan di berbagai negara oleh banyak peneliti.
Setiap item terkait dengan setiap ciri Big Five. Relawan diminta untuk mengisi kuesioner dengan memberi skor 1 jika mereka setuju dengan pernyataan dan memberi skor 5 jika mereka tidak setuju. Sebagai contoh, ada item yang terkait dengan ciri Agreeableness. Jika relawan memberi skor 1 pada pernyataan ini, maka itu akan menambah 5 poin untuk Agreeableness. Jika relawan memberi skor 5 (tidak setuju) pada item yang terkait dengan ciri Openness, maka itu akan menambah 1 poin untuk Openness. Jumlah poin maksimal adalah 220. Setelah 44 item dihitung, poin tertinggi yang diterima akan menjadi ciri dominan yang dimiliki oleh relawan.
Hasil kuesioner BFI akan digunakan untuk menentukan atribut kelas masing-masing relawan dalam klasifikasi kepribadian sebagai data latih. Setelah relawan mengisi kuesioner BFI, langkah selanjutnya adalah mengambil data dari akun Facebook masing-masing relawan. Ada 170 relawan yang data Facebook mereka akan diambil. Beberapa data yang diperoleh dari pengambilan data, antara lain Jenis Kelamin, Teman, Mengikuti, Permainan dan Aplikasi, Kiriman, Foto yang Ditag, Foto yang Diunggah, dan Suka.

## CONTOH PENELITIAN METODE KUALITATIF
### Judul
Using machine learning and qualitative interviews to design a fivequestion survey module for women’s agency
### Link
https://www.sciencedirect.com/science/article/pii/S0305750X22002662 
### Penjelasan
Penelitian dilakukan di distrik Kurukshetra, negara bagian Haryana, India, dengan beberapa pertimbangan. Pemilihan lokasi diutamakan di wilayah India bagian utara karena pemahaman tim terhadap konteks di sana, khususnya mengenai agensi perempuan. Tim membatasi penelitian pada daerah berbahasa Hindi untuk mencocokkan keterampilan bahasa mereka. Kurukshetra dipilih karena alasan praktis, termasuk ketersediaan surveyor perempuan yang telah bekerja pada penelitian sebelumnya, ketersediaan asisten penelitian utama dari New Delhi, dan lokasinya yang dapat diakses dari New Delhi.
Penelitian berfokus pada populasi pedesaan, dengan target 210 wawancara semi-struktural. Tim menggunakan dua pewawancara kualitatif, yang mampu melakukan sekitar 100 wawancara setiap satu selama tiga bulan. Setiap desa diharapkan selesai dalam dua atau tiga hari untuk menghindari diskusi antar perempuan yang dapat memengaruhi jawaban mereka. Total 21 desa diambil sebagai sampel untuk mencapai target wawancara.
Tim survei kuantitatif dan permainan lab terpisah, dengan sampel akhir sebanyak 443 wanita, yang 209 di antaranya menjadi subjek wawancara semi-struktural. Pemilihan desa dilakukan secara acak, dengan representasi yang sesuai dengan Kurukshetra dan stratifikasi berdasarkan populasi desa, jarak dari pusat distrik, dan rasio melek huruf laki-laki dan perempuan.
Pendekatan bertahap digunakan untuk memilih sampel wanita yang memenuhi syarat, yaitu perempuan menikah dengan anak di bawah usia 10 tahun. Data dari ASHA digunakan untuk memilih rumah tangga dan kemudian memilih wanita yang memenuhi syarat. Sebanyak 20 wanita diharapkan diikutsertakan di setiap desa, dan 50% di antaranya dipilih untuk wawancara semi-struktural.
Pengumpulan data dilakukan antara Februari dan Mei 2019, dengan variasi urutan pengumpulan data kualitatif dan kuantitatif. Tim berkunjung ke rumah tangga, memverifikasi kelayakan dan mendapatkan persetujuan informasi dari peserta sebelum mengumpulkan data lebih lanjut.
