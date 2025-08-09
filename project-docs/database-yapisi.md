# VINN KURYE PROJESİ NOTLARI



[⬅️ Ana döküman dosyasına git](../README.md) 

--- 
<br><br>



# Database Yapısı

## Kurallar

- Benzersiz: `userId`, `username` . 
- Referans: `userId` (Kullanıcılar tablosuna referans).
- Zorunlu: `email`, `password`, `role`, `username`, `Kayıt Tarihi`, `Son giriş tarihi`, .
- Giriş yapılmayan hesap bilgileri 1 ay sonra silinir (onaylılar 3 ay).




<br><br>




## Kullanıcılar 

- userId
- username (benzersiz)
- role (Kurye, Satışçı, Müşteri)
- Kayıt Tarihi (gün)
- Son giriş tarihi (gün)
- SohbetId'ler (referans)
- İlanId'ler (referans)
- Değerlendirme (referans, boş olabilir)
- PaketId'ler (referans, boş olabilir)
- Yorumlar (referans)


### Satışçılar

- userId (referans)
- email
- password
- Ad Soyad
- Telefon Numarası
- adres
- Bireysel / Kurumsal
- Onaylı profil (boolean)
  - Hesap Fotoğrafı
  - Kimlik Bilgileri
  - Şahıs fotoğrafları
  - Adli Sicil Kaydı
  - Kurumsal Bilgiler (varsa)
    - Kurum Fotoğrafı (çok sayıda, net ve doğal)
    - Bölge Kapasitesi
    - (varsa) Şirket Logosu
    - Şirket Unvanı
    - Vergi Numarası / Dairesi
    - Kurumsal Adres


### Kuryeler
- userId (referans)
- email
- password
- Ad Soyad
- Telefon Numarası
- adres
- Araç Bilgileri (varsa)
  - Araç Fotoğrafları (çok sayıda, net ve doğal)
  - Sürücü Belgesi (Ehliyet)
  - Araç Ruhsatı ve Plakası
  - Onaylı profil (boolean)
    - Hesap Fotoğrafı
    - Kimlik Bilgileri
    - Şahıs fotoğrafları
    - Adli Sicil Kaydı


### Müşteriler
- userId (referans)





<br><br>




## İlanlar

- ilanId (benzersiz)
- Satıcı userId (referans, boş olabilir)
- Kurye userId (referans, boş olabilir)
- Müşteri userId (referans, boş olabilir)
- SohbetId (referans, boş olabilir)
- Durumu (Aktif, Tamamlandı, İptal Edildi)
- Türü (Kurye, Paket)
- Başlığı
- Açıklaması
- Tarihler (oluşturulma, güncelleme, kurye teslim, adres teslim, tamamlama, iptal)
- Paket Bilgileri (varsa)
  - Fotoğrafları
  - Ağırlığı
  - Boyutları
  - İçeriği
  - Gönderen adres
  - Alıcı adres
  - Değerlendirme (referans, boş olabilir)




<br><br>


## Değerlendirmeler

- DeğerlendirmeId (benzersiz)
- Değerlendiren - userId (referans)
- Değerlendirilen - userId (referans)
- İlanId (referans, boş olabilir)
- puan (1-5)
- yorum
- zaman damgası
- tür:
  - 0: müşteri -> kurye
  - 1: müşteri -> satıcı
  - 2: kurye -> satıcı
  - 3: satıcı -> kurye
  - 4: satıcı -> müşteri
  - 5: kurye -> müşteri




<br><br>


## Sohbetler
- sohbetId (benzersiz)
- KullanıcıId'ler (referans, çoklu)
- ilanlarId (referans, boş olabilir)
- mesajlarId (referans, boş olabilir)

### Mesajlar
- mesajId (benzersiz)
- sohbetId (referans)
- Gönderen userId (referans)
- Alıcı userId (referans)
- Türü (metin, fotoğraf, dosya, konum, onay kodu)
- İçerik (metin, fotoğraf, dosya)
- Zaman damgası
- Okundu mu? (boolean)



<br><br><br>


<hr><br>
