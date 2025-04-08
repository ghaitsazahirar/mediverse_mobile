# mediverse_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Hehe siap! Berikut README yang cocok buat project kamu **Mediverse Mobile** dengan **Flutter + Supabase**, udah aku sesuaikan juga dengan struktur dan info yang kamu pakai tadi 👇

---

```markdown
# 📱 Mediverse Mobile

Mediverse Mobile adalah aplikasi mobile dari platform Mediverse — sistem reservasi medis online yang menghubungkan pasien, dokter, dan fasilitas kesehatan dalam satu ekosistem digital.

Aplikasi ini dibangun menggunakan **Flutter (Dart)** dan terintegrasi langsung dengan backend Supabase untuk autentikasi dan pengelolaan data.

---

## 🚀 Teknologi yang Digunakan

- Dart
- Flutter
- Supabase (Auth, Database)
- VS Code
- GitHub

---

## 📁 Struktur Folder (Umum)

```bash
lib/
├── main.dart              # Entry point aplikasi
├── supabase.dart          # Inisialisasi koneksi Supabase
├── pages/
│   └── home_page.dart     # Halaman utama aplikasi
└── services/
```

---

## 🧠 Fitur Utama (Sementara)

- 🔐 Autentikasi via Supabase (Sign In / Sign Up)
- 🏠 Halaman utama dengan counter (default)
- 📦 Struktur siap dikembangkan lebih lanjut (reservasi, profil, dsb)

---

## 🛠️ Cara Menjalankan Project

```bash
git clone https://github.com/ghaitsazahirar/mediverse-mobile.git
cd mediverse-mobile

flutter pub get                # Install dependency
flutter run                    # Jalankan aplikasi
```

> Pilih device saat muncul pilihan (Linux / Chrome)

---

## 🔑 Setup Supabase

1. Buat project Supabase di https://supabase.com/
2. Salin **URL** dan **anon key**
3. Buka file `lib/supabase.dart` dan isi seperti berikut:

```dart
Supabase.initialize(
  url: 'https://your-project.supabase.co',
  anonKey: 'your-anon-key',
);
```

---

## 🌀 Git Flow

1. Kamu sebagai inisiator project, push pertama:
```bash
git init
git remote add origin https://github.com/ghaitsazahirar/mediverse-mobile.git
git checkout -b develop
git add .
git commit -m "Initial commit"
git push -u origin develop
```

2. Struktur branch:
   - `main` → produksi
   - `develop` → pengembangan aktif
   - `feature/*`, `release/*`, `hotfix/*` sesuai Git Flow

---
