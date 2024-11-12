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




