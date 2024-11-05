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
