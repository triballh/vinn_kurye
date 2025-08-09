# VINN KURYE PROJESİ NOTLARI



[⬅️ Ana döküman dosyasına git](../README.md) 

--- 
<br><br>



# İş Akışları: "BİR TESLİMATIN YAŞAM DÖNGÜSÜ"

Burada VINN Kurye platformunda yer alan iş akışlarını detaylı bir şekilde inceleyebilirsiniz.

İş akışları, kullanıcıların (satışçılar, bireysel müşteriler ve kuryeler) platform üzerindeki etkileşimlerini ve süreçlerini düzenler.



<br><br><br>




## İLANI AKIŞI

### 1. İlan Oluşturma Aşaması
**Satışçı:**
- İlan formunu doldurur (paket detayları, adres, aciliyet, kurye özellikleri vb.)
- İlanı yayınlar
- (opsiyonel) fotoğraf yükler
- (opsiyonel) Müşteri telefonunu ekler (kurye paket aldıktan sonra görebilir.)
- (opsiyonel) İlan kodunu müşteriye söyler.

**Sistem:**
- İlan içeriğini kontrol eder
- Yasak ürün kontrolü yapar
- İlanı aktif kuryelerle eşleştirir

<br>

### 2. Kurye Seçimi Aşaması
**Kurye:**
- Uygun ilanları görür
- İlan detaylarını inceler
- "Yoldayım" / "ilgilenmiyorum" olarak işaretler.
- "Yoldayım" olarak işaretleyen kuryelerin bilgilerini "Satışçıya" gönderir.
- **Satışçı**, kurye bilgilerini ve konumunu görebilir.
- (Opsiyonel) Kurye ile iletişim kurar.
- (Opsiyonel) Kurye'yi reddeder.

**Sistem:**
- En uygun kuryeler seçimini yapar (mesafe, rating, fiyat)
- Kurye ve satışçıya bildirim gönderir.
- Kurye'nin konumunu ve bilgilerini satışçıya gösterir.

<br>

### 3. Paket Alma Aşaması

- **Kurye**, satışçı konumuna gider / iletişim kurar.
- Paketin kuryeye tesliminin satıcı-kurye (QR/PIN ile) onaylar
- (opsiyonel) Konumunu paylaşır
- (opsiyonel) Paket fotoğrafı çeker

<br>

### 4. Teslimat Aşaması

- **Kurye**, Müşteri adresine gider
- **Kurye**, Teslimat fotoğrafı çeker
- (opsiyonel) **Müşteri**, Paket numarası ile konumu takip eder
- (opsiyonel) **Kurye**, Uygulamaya teslim yerinin konumunu ve fotoğrafını yükler
- (opsiyonel) **Müşteri**, kuryeyle uygulama üzerinden iletişim kurar
- (opsiyonel) **Kurye**, Onay kodunu alır

<br>

### 5. Kapanış Aşaması
**Satıcı:**
- Teslimatın başarılı olduğunu onaylar
- (opsiyonel) Kurye'yi puanlar
- (opsiyonel) Kurye ile iletişim kurar 

**Kurye:**
- (opsiyonel) Satıcıyı puanlar

**Müşteri:**
- (opsiyonel) Müşteriyi ve satıcıyı puanlar
- (opsiyonel) Kurye ile iletişim kurar

**Sistem:**
- Tüm onayları kontrol eder
- Komisyonları hesaplar
- Başarı bildirimi gönderir
- Müşteri ve kuryenin hesaplarına değerlendirme ekler
- Rating/değerlendirme ister
- (opsiyonel) Kurye ve Satıcıya teşekkür mesajı gönderir
- (opsiyonel) Kurye ve Satıcıya bonus/puan ekler






<br><br><br>


<hr><br>
