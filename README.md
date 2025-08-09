# VINN KURYE PROJESİ

VINN Kurye, şehir içi acil teslimat ihtiyacını teknoloji destekli, son derece güvenli ve kullanıcı dostu bir deneyimle çözmeyi amaçlayan yeni nesil bir mobil teslimat platformudur. "Güven zinciri" adını verdiğimiz çok katmanlı doğrulama sistemiyle, gönderinin her anı güvence altına alınır.

Platform, gönderi oluşturandan (Gönderici) paketi taşıyana (Kurye) ve teslim alana (Alıcı) kadar tüm süreci şeffaf, hızlı ve güvenli bir şekilde yönetmeyi amaçlar. 

Geleneksel kurye hizmetlerinin aksine, VINN Kurye sadece bir taşıma aracı değil, aynı zamanda değerli ve acil gönderiler için özel ve güvenilir bir "VIP" hizmeti sunar.

<br>

Platform, dört ana kullanıcı grubuna hizmet eder:
- **İşletmeler/Satışçılar**: Ürünlerini müşterilere ulaştırmak isteyen
- **Bireysel Müşteriler**: Acil gönderi ihtiyacı olan
- **Kuryeler**: Esnek çalışma imkanı arayan
- **Paketler**: Beklemekten sıkılan cansızlar


<br><br>

## 📋 İÇİNDEKİLER

- [📚 Proje Dokümantasyonu](#proje-dokümantasyonu)
- [🛠️ Gereksinimler](#gereksinimler)
- [🏗️ Teknoloji Stack](#teknoloji-stack)
- [✨ Özellikler](#özellikler)
- [ℹ️ Proje Hakkında](#proje-hakkında)
- [🚀 Platform Özellikleri](#platform-özellikleri)
- [👨‍💻 Geliştirici Ekibi](#geliştirici-ekibi)


## 📚 Proje Dokümantasyonu

Proje ile ilgili detaylı teknik dokümantasyon ve iş süreçleri:

| Dokuman | Açıklama |
|---------|----------|
| [🔄 İş Akışı](./project-docs/is-akisi.md) | Gönderici, kurye ve alıcı arasındaki süreç adımları ve iş akışları |
| [👤 Roller](./project-docs/roller.md) | Sistem kullanıcılarının rolleri, yetkileri ve sorumlulukları |
| [⚙️ Teknik Gereksinimler](./project-docs/teknik-gereksinimler.md) | Mobil uygulama, backend ve sistem gereksinimleri |
| [🗄️ Veritabanı Yapısı](./project-docs/database-yapisi.md) | Firebase Firestore koleksiyonları ve veri modelleri |
| [📁 Klasör Yapısı](./project-docs/folder-structure.md) | Flutter proje klasörlerinin organizasyonu ve açıklamaları |
| [📄 Dosya Yapısı](./project-docs/file-structure.md) | Temel dosyaların yapısı ve proje içindeki rolleri |



## Gereksinimler
- Flutter SDK (3.0+)
- Dart SDK (3.0+)
- Firebase hesabı ve yapılandırması
- Android Studio / VS Code

## 🏗️ Teknoloji Stack

- **Frontend:** Flutter 3.x, Dart
- **Backend:** Firebase (Auth, Firestore, Storage, Functions)
- **State Management:** Provider
- **UI Framework:** Material Design 3
- **Maps:** Google Maps API
- **Notifications:** Firebase Cloud Messaging
- **Platform:** Android, iOS, Web

## Özellikler

- 🔐 Firebase Authentication ile güvenli giriş/kayıt sistemi
- 📱 Cross-platform (Android/iOS/Web) desteği
- 🎨 Modern ve responsive UI tasarımı
- ☁️ Firebase Cloud Firestore ile gerçek zamanlı veri senkronizasyonu
- 📁 Firebase Storage ile dosya yönetimi
- 🚀 Onboarding ekranları ile kullanıcı deneyimi


<br><br>



## Proje Hakkında

**Temel Amaç:** Şehir içi acil teslimat ihtiyacını, teknoloji destekli, son derece güvenli ve kullanıcı dostu bir deneyimle çözmek.

**VINN Kurye**, acil kurye hizmetine ihtiyaç duyan kullanıcılar ile müsait kuryeler arasında köprü görevi gören çok taraflı bir dijital platformdur. Platform, dört ana kullanıcı grubuna hizmet eder:
- **İşletmeler/Satışçılar**: Ürünlerini müşterilere ulaştırmak isteyen
- **Bireysel Müşteriler**: Acil gönderi ihtiyacı olan
- **Kuryeler**: Esnek çalışma imkanı arayan
- **Paketler**: Beklemekten sıkılan cansızlar


<br>


### Değer Önerisi
- **Güven Zinciri:** Fiziksel kimlik doğrulamadan başlayıp, çift taraflı onay kodları, fotoğraf ve konum damgasıyla son bulan, gönderinin her anını güvence altına alan bir iş akışı.
- **Mutlak Hız:** Akıllı eşleştirme algoritması sayesinde gönderiye en yakın ve en uygun kuryenin saniyeler içinde atanması ve teslimatın mümkün olan en kısa sürede tamamlanması.
- **Şeffaflık ve Kontrol:** Gönderici ve Alıcı'nın, kuryeyi harita üzerinde anlık olarak takip edebilmesi, tüm süreç adımlarında bildirim alması ve iletişim kurabilmesi.
- **Premium His:** Standart bir teslimat hizmetinden öte, önemli gönderiler için özel ve güvenilir bir "VIP" hizmeti sunma algısı.

<br>

### Temel Değerler
- **Hız**: Geleneksel kargo firmalarına göre daha acil teslimat
- **Esneklik**: 7/24 hizmet imkanı
- **Şeffaflık**: Gerçek zamanlı takip ve iletişim
- **Güvenlik**: Çoklu doğrulama sistemleri



<br><br>



## Platform Özellikleri

### Temel Özellikler
- **Gerçek zamanlı konum takibi**
- **Anlık mesajlaşma sistemi**
- **Fotoğraf paylaşımı ve doğrulama**
- **QR kod/PIN tabanlı onay sistemi**
- **Harita tabanlı adres seçimi**
- **Push notification bildirimleri**
- **Rating ve yorum sistemi**


<br>


### Gelişmiş Özellikler
- **Kurye optimizasyonu** (en yakın ve en uygun kurye seçimi)
- **Rota optimizasyonu**
- **Müşteri sadakat programı**
- **İstatistik ve raporlama paneli**
- **Çoklu dil ve para birimi desteği**
- **Çeşitli güvenlik önlemleri** (kimlik doğrulama, fotoğraf onayı, konum doğrulama)




<br><br><br>

NOT: **Kritik Başarı Faktörleri:**
- Kullanıcı güvenliği ve güveni
- Hızlı ve güvenilir teslimat
- Rekabetçi fiyatlandırma
- Sürekli teknoloji yeniliği
- Müşteri odaklı hizmet anlayışı







<br><br><br>

<hr><br>

## Geliştirici Ekibi

- Mehmet Akif Akkoç [mefamex.com](https://mefamex.com) / [GitHub](https://github.com/Mefamex)  /  [info@mefamex.com](mailto:info@mefamex.com)
- Halil Temur
