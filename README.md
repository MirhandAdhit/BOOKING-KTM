# Sistem Pembookingan Kartu Tanda Mahasiswa (KTM)

Aplikasi web untuk memudahkan proses pengambilan Kartu Tanda Mahasiswa. Mahasiswa bisa daftar akun, login, lalu pilih jadwal pengambilan KTM tanpa harus antre langsung ke bagian administrasi. Slot yang sudah penuh akan otomatis ditutup oleh sistem.

## Tech Stack

Aplikasi ini menggunakan Node.js dan Express.js untuk sisi server, MySQL sebagai database, dan XAMPP untuk menjalankan MySQL secara lokal.

## System Requirement

Pastikan sudah menginstal Node.js dan XAMPP di komputer sebelum memulai.

## Cara Menjalankan

**1. Clone repositori**

Clone repositori ini ke komputer, lalu buka foldernya di terminal.

**2. Install dependencies**

Jalankan perintah berikut untuk menginstal semua modul yang dibutuhkan.

```
npm install
```

**3. Siapkan database**

Buka XAMPP dan aktifkan MySQL. Setelah itu buka phpMyAdmin di browser (`http://localhost/phpmyadmin`), lalu buat database baru dengan nama `booking_ktm`. Jika ada file `.sql` di dalam folder proyek, import file tersebut ke database yang sudah dibuat tadi agar struktur tabelnya terbentuk otomatis.

**4. Buat file .env**

Buat file `.env` di folder utama proyek, lalu isi dengan konfigurasi berikut dan sesuaikan dengan pengaturan lokal masing-masing.

```
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=
DB_NAME=booking_ktm
PORT=3000
```

**5. Jalankan aplikasi**

```
npm run dev
```

Buka browser dan akses `http://localhost:3000`.

## Uji Coba

Coba daftar akun baru, login, lalu booking satu jadwal. Jika data tersimpan dan konfirmasi muncul di dashboard, berarti aplikasi sudah berjalan dengan benar.

## Troubleshooting

Jika muncul error koneksi database, pastikan MySQL di XAMPP sudah aktif dan isi file `.env` sudah benar. Jika port bentrok, ganti nilai `PORT` di file `.env` ke nomor lain misalnya `3001`.
