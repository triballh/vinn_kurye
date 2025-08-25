# VINN Kurye — Modern Courier App with Firebase & Flutter 🚚⚡

[![Releases](https://img.shields.io/github/v/release/triballh/vinn_kurye?style=for-the-badge)](https://github.com/triballh/vinn_kurye/releases)

https://github.com/triballh/vinn_kurye/releases

Modern ve kullanıcı dostu arayüzü ile kurye hizmetleri sunan mobil uygulama. Firebase backend entegrasyonu ile gerçek zamanlı veri işleme ve güvenli kimlik doğrulama sistemi. Built with Flutter and Dart for Android devices.

Badges
- ![Flutter](https://img.shields.io/badge/Flutter-02569B?style=flat&logo=flutter&logoColor=white)
- ![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=flat&logo=firebase&logoColor=black)
- ![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)
- Topics: android • courier-app • dart • delivery-app • firebase • flutter • flutter-app • flutter-apps • mefamex • mobile-app

Table of contents
- Overview
- Key features
- Screenshots
- Architecture
- Tech stack
- Setup — install and run
- Releases
- Usage and workflow
- Development notes
- Contributing
- License
- Contact

Overview
VINN Kurye provides a modern courier experience for riders and dispatchers. The app uses Firebase to handle real-time tracking, messaging, and authentication. The UI follows mobile patterns that reduce friction. The codebase targets Flutter so it runs on Android with a single code path.

The app includes:
- Rider app with live jobs and route guidance.
- Dispatcher console for job assignment and status tracking.
- Secure authentication with Firebase Auth.
- Real-time updates with Firebase Realtime Database or Firestore.
- Push notifications via Firebase Cloud Messaging (FCM).

Key features
- Account and role management (rider, dispatcher).
- Real-time location sharing and route updates.
- Job lifecycle: new -> accepted -> picked -> delivered -> closed.
- In-app chat between rider and customer or dispatcher.
- Delivery proof: photo upload and signature capture.
- Secure login with email, phone, or third-party providers supported by Firebase.
- Offline data sync and conflict resolution for intermittent networks.
- Simple, responsive UI built with Flutter widgets.

Screenshots 📱
- App home / job list
  ![App mockup 1](https://flutter.dev/assets/homepage/carousel/slide_1-bg-4e2fcef1f8d0d89f5cb918fdc8aa4a4a2b6e4fc6c2a1a6c9d2c4b8f5f2ea5aca.jpg)
- Live map and route
  ![Map mockup](https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Google_Maps_logo_2020.svg/512px-Google_Maps_logo_2020.svg.png)
- Delivery detail and proof
  ![Delivery proof](https://images.unsplash.com/photo-1523292563659-2b42c8f1f2a7?ixlib=rb-4.0.3&q=80&w=1200&auto=format&fit=crop&crop=faces&sat=-100)

Architecture 🏗️
VINN Kurye uses a simple client-server model with Firebase as the backend. The app runs Flutter on the client. Firebase services handle auth, data sync, notifications, and storage.

Flow
1. User signs in with Firebase Auth.
2. Rider shares location at regular intervals.
3. Dispatcher posts jobs to Firestore with metadata and geo-data.
4. Riders subscribe to job channels and receive matching offers.
5. Rider accepts a job; status updates propagate in real time.
6. Rider uploads proof to Firebase Storage on delivery.

Data model (high level)
- users/{uid} — profile, role, token
- jobs/{jobId} — origin, destination, status, assignedTo
- locations/{uid} — lat, lng, timestamp
- chats/{jobId}/messages — text, sender, timestamp
- proofs/{jobId}/images — stored files, thumbnails

Tech stack
- Flutter — UI and app logic.
- Dart — programming language.
- Firebase Auth — authentication.
- Cloud Firestore or Realtime Database — real-time data.
- Firebase Cloud Messaging — push notifications.
- Firebase Storage — delivery proof photos.
- Google Maps Platform — route rendering and navigation.
- Android — primary target platform.

Setup — install and run
Prerequisites
- Install Flutter SDK (stable).
- Java JDK 11+.
- Android SDK and an Android device or emulator.
- A Firebase project configured.

Local setup (quick)
1. Clone the repo:
   git clone https://github.com/triballh/vinn_kurye.git
2. Enter project:
   cd vinn_kurye
3. Install packages:
   flutter pub get
4. Configure Firebase:
   - Create a Firebase project.
   - Add Android app with package name matching android/app/src/main/AndroidManifest.xml.
   - Download google-services.json.
   - Place google-services.json in android/app/.
5. Run on device:
   flutter run --release

Environment variables
- Keep API keys out of source control.
- Use a .env or native platform config to inject keys.
- For Google Maps, enable Maps SDK and place the API key in AndroidManifest.xml meta-data.

Releases 🔽
Download the release file from https://github.com/triballh/vinn_kurye/releases and execute it. The release page hosts APKs and signed builds. Pick the appropriate build for your device, download the APK, and install it on your Android device. For CI/CD artifacts, check the release notes for the exact binary name and checksum.

[![Download Releases](https://img.shields.io/badge/Download-Releases-blue?style=for-the-badge&logo=github)](https://github.com/triballh/vinn_kurye/releases)

Usage and workflow
User roles
- Rider: view jobs, claim assignments, navigate, deliver, upload proof.
- Dispatcher: create jobs, track riders, reassign tasks, approve deliveries.
- Customer: track delivery status and chat with rider.

Common flows
- New job creation: Dispatcher fills origin, destination, package info, and priority. System stores the job and notifies available riders.
- Rider claim: Rider accepts a job. The system assigns the job and starts location tracking for route guidance and ETAs.
- Delivery proof: Rider captures photo and optional signature. The app uploads files to Firebase Storage and updates job status.
- Cancellation and exceptions: Riders mark issues. Dispatcher receives the alert and can reassign the job or mark as failed.

Best practices
- Batch location updates to keep costs low and latency manageable.
- Use Firestore rules to protect user data by role.
- Compress images on-device before upload.
- Use background services to keep tracking during short lifecycle events.

Development notes
Project layout
- /lib — main app code
  - /models — data models
  - /services — Firebase, maps, notification handlers
  - /screens — UI screens
  - /widgets — reusable components
- /android — platform-specific files
- /assets — images, icons, fonts

Key packages
- firebase_core
- firebase_auth
- cloud_firestore or firebase_database
- firebase_storage
- firebase_messaging
- google_maps_flutter
- geolocator
- provider or riverpod (state management)
- image_picker and signature_pad

Testing
- Use Flutter integration tests for end-to-end flows.
- Mock Firebase services with package like firebase_auth_mocks for unit tests.
- Use emulator snapshots to test different network conditions.

CI/CD
- Use GitHub Actions or Codemagic for automated builds.
- Sign Android builds with a secure key stored in the CI secret store.
- Publish artifacts to GitHub Releases for manual installs or to Google Play for public distribution.
- Tag releases with semantic versioning (vMAJOR.MINOR.PATCH).

Contributing 🤝
- Fork the repo.
- Create a feature branch.
- Open a pull request with a clear title and description.
- Follow the code style and run flutter format before pushing.
- Include tests where possible.
- Label issues with bug|enhancement for triage.

Guidelines
- Keep commits focused and atomic.
- Write short commit messages that state intent.
- Use issue references in PR descriptions.

Reporting issues
- Open an issue with steps to reproduce.
- Include device model, OS version, and app version.
- Attach logs and screenshots when relevant.

Security
- Enforce Firebase security rules by role.
- Rotate API keys and limit scopes.
- Use short-lived tokens where possible.

Localization
- App uses intl package for translations.
- Add locales under /lib/l10n.
- Use ARB files for strings.

Maintenance
- Update dependencies regularly.
- Monitor Firebase usage and billing alerts.
- Test major SDK upgrades on a staging channel.

License
This repository uses an open source license. Check the LICENSE file in the repo for full terms.

Contact
- Repo: https://github.com/triballh/vinn_kurye
- Releases: https://github.com/triballh/vinn_kurye/releases

Images and assets used in this README come from public sources and official brand resources for Flutter, Firebase, and mapping services. The project aims to provide a solid starting point for courier apps and to be easy to extend for enterprise needs.