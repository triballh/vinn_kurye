# PROJEYI KURMA 


## CONTENTS
- [PROJEYI KURMA](#projeyi-kurma)
  - [CONTENTS](#contents)
  - [PROJECT INITIALIZATION](#project-initialization)
    - [Platformları ayarlama](#platformları-ayarlama)
    - [Assets and Icons](#assets-and-icons)
    - [Proje Icon](#proje-icon)
  - [FIREBASE INITIALIZATION](#firebase-initialization)



## PROJECT INITIALIZATION

```bat
flutter create vinn_kurye
cd vinn_kurye
```

- android/app/build.gradle -> minSdkVersion 21


<br>


### Platformları ayarlama

``` yaml
# filepath .metadata
migration:
  platforms:
    # istemediklerini yorum satırı yap
    # android ve web'i bıraktım
```

```ps
Remove-Item -Recurse -Force ios, linux, macos, windows
# web, android silmedim
```

```bat
flutter clean    # temizleme
flutter pub get  # bağımlılıkları yükleme
flutter run      # uygulamayı çalıştırma
flutter build apk --release  # release apk oluşturma
```

<br>


### Assets and Icons

- assets klasörünü oluşturun ve içerisine gerekli dosyaları ekleyin.

``` yaml
# filepath /pubspec.yaml
flutter:
    assets:
        - assets/
```

<br>

### Proje Icon

``` yaml
# filepath /pubspec.yaml
flutter:
dev_dependencies:
    flutter_launcher_icons: ^0.13.1

flutter_icons:
    android: true
    ios: true
    image_path: "assets/images/logos/icon_just_red.png"

```

<br>

### Android için değişiklikler


```xml
# filepath: android\app\src\main\AndroidManifest.xml

<application
    android:enableOnBackInvokedCallback="true"
    ... >
</application>
```


<br><br><br>



## FIREBASE INITIALIZATION

- Firebase Projesi Oluşturma
- Firebase Console'da Uygulama Kaydı (Android/iOS)
- FlutterFire CLI Kurulumu
- Firebase hesabına giriş (firebase login)
- Flutter Projenizi Firebase’e Bağlama (flutterfire configure)
- Firebase Core ve İlgili Paketleri Projeye Ekleme
- Firebase’i Uygulamada Başlatma (Firebase.initializeApp())
- Firebase Authentication Hizmetini Etkinleştirme
- Firestore Veritabanı Oluşturma ve Güvenlik Kurallarını Ayarlama
- Profil Oluşturma İçin Firestore Koleksiyonları Tasarlama
- Mesajlaşma Özelliği İçin Firestore veya Realtime Database Kullanımı
- Flutter Projesinde Authentication ve Firestore API’lerini Kullanarak Geliştirme
- Firebase Konsolunda Proje Ayarlarını ve Güvenlik Kurallarını Güncelleme

```bash
# Bilgisayarınıza FlutterFire CLI aracını yükleyin:
flutter pub global activate flutterfire_cli

# Ardından Firebase hesabınıza giriş yapın:
firebase login

# Bu komut, Firebase projenizi Flutter uygulamanıza entegre eder.
flutterfire configure

# Firebase çekirdek paketini ekleyin:
flutter pub add firebase_core

# Firebase  kullanıcı kimlik doğrulama için:
flutter pub add firebase_auth

# Firebase Analytics paketini ekleyin: (ben eklemedim, şimdilik)
# flutter pub add firebase_analytics

# Veri kaydetmek ve realtime mesajlaşma
# Firebase Firestore veritabanı için:
flutter pub add cloud_firestore

# Firebase Storage dosya yükleme ve indirme için:
flutter pub add firebase_storage

# Firebase Push Bildirimleri için:
flutter pub add firebase_messaging

# Firebase Remote Config için:
# flutter pub add firebase_remote_config

# Firebase Crashlytics için:
#flutter pub add firebase_crashlytics

# Firebase Dynamic Links için:
# flutter pub add firebase_dynamic_links

# Firebase Performance Monitoring için:
# flutter pub add firebase_performance
```

<br>
