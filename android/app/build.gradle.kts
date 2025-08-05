plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.vinn_kurye"
    compileSdk = 34
    ndkVersion = "27.3.13750724"  // stable for firebase "26.2.11394342" , firestore 27.0.12077973

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17 //
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        // 8 : UYUMSUZ 
        // 11: TAM UYUMLU ,    MAUI, Xamarin ve Android için önerilen sürüm.
        // 17: KISMEN UYUMLU,  Bazı build araçları ve pluginler ile uyumlu olabilir.
        // 21: KISMEN UYUMLU,  Bazı yeni SDK’larda test edilmeye başlandı ama tam destekli değil.
        // 22: Büyük Oranda UYUMSUZ, MAUI ve Android build araçlarının çoğu henüz bu kadar yeni sürümleri desteklemez.
        // 23: Büyük Oranda UYUMSUZ, Çok yeni, hata ve uyumsuzluk riski çok yüksek.
        jvmTarget = JavaVersion.VERSION_17.toString() 
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.vinn_kurye"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = 23       // 21: Android 5.0 Lollipop + , 23: ndk 29 için ve firestore
        targetSdk = 34
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}
