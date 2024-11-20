# Tugas 7 :  Elemen Dasar Flutter
Naila Syarifa Yosarvi - 2306245882

## 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya. 
Stateless widget adalah widget yang tidak memeiliki keadaan state yang dapat berubah. Tampilan dan karakteristik widget ini bersifat tetap dan tidak berubah seiring waktu, serta tidak dipengaruhi oleh perubahan nilai atau interaksi pengguna. Stateless widet bersifat statis dan tidak berubah setelah dibuat. Sedangkan stateful widget adalah widget yang memiliki keadaan state yang dapat berubah selama siklus hidupnya. Stateful widget dapat merender diri mereka sendiri ketika terjadi perubahan dalam statenya. Stateful widget bersifat dinamis dan dapat diperbarui menggunakan. 

 ## 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
main.dart : - MyApp
                Widget utama yang digunakan sebagai entry point dari aplikasi ini. MyApp adalah turunan dari StatelessWidget.

            - MaterialApp
                MaterialApp adalah widget yang digunakan sebagai root dari seluruh antarmuka aplikasi Flutter. Ini adalah widget yang pertama kali dibangun dalam pohon widget, dan mengatur banyak konfigurasi yang mempengaruhi seluruh aplikasi.

            - MyHomePage
                Widget halaman utama dari aplikasi ini.

menu.dart : - Scaffold
                Menyediakan struktur dasar halaman, termasuk bagian AppBar, body, dan floatingActionButton.

            - AppBar
                Bagian atas halaman yang menampilkan judul aplikasi, dalam hal ini "SyreAttire".
            
            - Text
                Text berfungsi untuk menampilkan sebuah teks biasa, atau bisa kita berikan style dengan menambahkan property style.
            
            - InfoCard
                Widget khusus yang menampilkan informasi berupa judul dan isi (seperti NPM, nama, kelas) dalam format kartu.
            
            - GridView.count
                Menampilkan daftar widget dalam bentuk grid dengan jumlah kolom yang ditentukan 
        
 ## 3. Apa fungsi dari setState() ? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
 setState() memungkinkan aplikasi untuk menanggapi perubahan data dan memperbarui tampilan UI secara real-time. Semua variabel yang memengaruhi tampilan UI dalam metode build() dapat diperbarui melalui setState(), sehingga membuat UI menjadi interaktif dan responsif terhadap aksi pengguna.

 ## 4. Jelaskan perbedaan antara const dengan final. 
 cost digunakan untuk nilai yang benar-benar konstan dan tidak berubah sepanjang waktu kompilasi dan eksekusi, harus diketahui dan diinisialisasi pada waktu kompilasi, sedangkan final digunakan untuk nilai yang tetap setelah diinisialisasi tetapi baru diketahui saat runtime, dan tidak bisa diubah setelah inisialisasi. 
 
 ## 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
- Buat Proyek Flutter
- Buat file baru dengan nama menu.dart pada folder game_sthar/lib, kemudian tambahkan import 'package:flutter/material.dart';
- Memindah dan modifikasi MyHomePage dari main.dart.
- Mengubah bagian colorSceheme menjadi colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo), pada main.dart
- Membuat widget stateless baru yang berfungsi untuk menampilkan card.


# Tugas 8 : Flutter Navigation, Layouts, Forms, and Input Elements

## 1.  Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan? 
'const' pada kode Flutter digunakan untuk mendefinisikan nilai yang bersifat konstan, maksudnya nilai tersebut tidak dapat diubah selama runtime. const juga digunakan pada widget atau variabel yang nilainya tidak akan berubah, misalnya teks atau ikon. penggunakan const tidak digunakan pada objek atau widget yang nilainya bisa berubah selama runtime, misalnya data dari input pengguna.

## 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Column digunakan untuk menyusun widget secara vertikal (dari atas ke bawah), misalnya pada form atau daftar item. sedangkan row itu digunakan dan cocok untuk menyusun widget secara horizontal (dari kiri ke kanan), misalnya baris tombol atau ikon di dalam satu baris.

## 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan! 
Terdapat TextFormField, untuk menerima input teks dari pengguna, dengan masing-masing field yang berbeda (nama dan deskripsi). Juga Form yaitu wadah untuk mengelompokkan beberapa bagian(input) formulir, di sini bisa meletekkan TextFormField untuk meminta jawaban dari user. Saya tidak memakai DropdownButtonFormField, karena pada tugas ini belum di butuhkan. 

## 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Saya menggunakan ThemeData pada MaterialApp. Penggunaan ThemeData dapat mengatur warna primary serta sekunder yang di pakai pada aplikasi sehingga aplikasi bisa menjadi konsisten. Contoh saya menggunkan 

        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF9b957f), // Warna utama
           secondary: const Color(0xFF9b957f), // Warna sekunder
        ),

## 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama. Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru. Selanjutnya membuat sebuah drawer pada aplikasi. Saya menggunakan navigasi sederhana yaitu push dan pop untuk menghandle nya. 

# Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter

## 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Dalam  aplikasi, model sangat penting untuk mengolah data, terutama saat mengirim atau menerima data dalam format JSON. Model akan memastikan data terstruktur dengan baik, valid, dan terhubung dengan database. Jika tidak menggunakan model, kita masih bisa mengirimkan data JSON, tetapi pengelolaan data akan sulit dan tidak terintegrasi dengan database. Hal ini bisa menyebabkan inkonsistensi atau error ketika data tidak sesuai format yang diharapkan.

## 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library http berfungsi sebagai penghubung antara aplikasi dan server. Library ini memungkinkan kita untuk mengirimkan permintaan HTTP seperti GET, POST, PUT, atau DELETE untuk berkomunikasi dengan server. Library ini juga membantu mengirim data seperti form atau autentikasi dan menerima respons dari server dalam format JSON, yang kemudian dapat diproses lebih lanjut di aplikasi Flutter.

## 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest berperan dalam mengelola status autentikasi dan sesi pengguna di seluruh aplikasi Flutter. Instance CookieRequest harus dibagikan ke seluruh komponen aplikasi untuk menjaga konsistensi data autentikasi, seperti menyimpan detail login, mengelola cookie, dan menjalankan permintaan terautentikasi ke server Django. Dengan membagikan instance CookieRequest melalui Provider, setiap widget dalam aplikasi dapat menggunakan data autentikasi yang sama tanpa perlu membuat instance baru atau mengulangi proses autentikasi. Pendekatan ini juga memudahkan pengelolaan status global aplikasi, sehingga setiap komponen dapat mengakses dan memperbarui data autentikasi dengan konsisten. Selain itu, ini memastikan bahwa semua permintaan ke server menyertakan informasi autentikasi yang valid.

## 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Mekanisme pengiriman data dari input hingga ditampilkan di Flutter dimulai dari form input menggunakan widget seperti TextFormField. Setelah user mengisi dan menekan submit, data dikumpulkan, dikonversi ke JSON, lalu dikirim ke server Django melalui HTTP POST menggunakan CookieRequest. Server memvalidasi dan menyimpan data ke database.

Untuk menampilkan data, Flutter mengirim HTTP GET request ke endpoint Django, menerima data JSON, lalu mengonversinya ke objek Dart menggunakan model. Data ini ditampilkan menggunakan widget seperti ListView.builder atau Card, sehingga input dari user dapat disimpan dan ditampilkan kembali di aplikasi.

## 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Autentikasi dimulai dari registrasi, di mana user mengisi form di Flutter dan data dikirim ke Django melalui HTTP POST. Django akan memprosesnya, membuat user baru, dan menyimpan data ke database. Setelah berhasil, user diarahkan ke halaman login.

Ketika login, username dan password dikirim ke Django untuk verifikasi. Jika valid, Django membuat session dan mengirim cookie ke Flutter, yang disimpan oleh CookieRequest untuk request selanjutnya. Setelah login berhasil, Flutter menampilkan menu utama dengan state login tersimpan.

Saat logout, Flutter mengirim request ke Django untuk menghapus session. Django menghapus session dan cookie, lalu Flutter membersihkan state login dan mengarahkan user ke halaman login.

## 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
- Pertama saya membuat aplikasi django baru bernama authentication. Lalu, menambahkan views register, login, dan logout dan menambahkan routing authentication di urls.py
- Selanjutnya membuat file baru, register.dart dan login.dart beserta mengubah widgetnya 
- Saya membuat list_itementry.dart untuk menampilkan list item nya
- Selanjutnya, saya membuat halaman item_details yang berfungsi untuk menampilkan semua atribut dari item pada proyek. 



