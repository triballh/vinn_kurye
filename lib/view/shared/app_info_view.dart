import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppInfoView extends StatefulWidget {
  const AppInfoView({super.key});

  @override
  State<AppInfoView> createState() => _AppInfoViewState();
}

class _AppInfoViewState extends State<AppInfoView> {
  Map<String, dynamic>? pubspecData;
  String pubspecContent = '';
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadPubspecData();
  }

  Future<void> loadPubspecData() async {
    try {
      final String response = await rootBundle.loadString('pubspec.yaml');
      pubspecContent = response.isEmpty
          ? 'pubspec.yaml içeriği yüklenemedi.'
          : response.replaceAll('gelen\r\n', '\n'); // Normalize line endings
      final List<String> lines = response.split('\n');

      Map<String, dynamic> data = {};
      bool inDependencies = false;
      bool inDevDependencies = false;

      for (int i = 0; i < lines.length; i++) {
        final line = lines[i];
        final trimmed = line.trim();

        if (trimmed.startsWith('name:')) {
          data['name'] = trimmed.split(':')[1].trim();
        } else if (trimmed.startsWith('description:')) {
          data['description'] = trimmed
              .split(':')[1]
              .trim()
              .replaceAll('"', '');
        } else if (trimmed.startsWith('version:')) {
          data['version'] = trimmed.split(':')[1].trim();
        } else if (trimmed == 'dependencies:') {
          inDependencies = true;
          inDevDependencies = false;
          data['dependencies'] = <String, String>{};
        } else if (trimmed == 'dev_dependencies:') {
          inDependencies = false;
          inDevDependencies = true;
          data['dev_dependencies'] = <String, String>{};
        } else if (inDependencies && trimmed.contains(':')) {
          final parts = trimmed.split(':');
          final key = parts[0].trim();
          final value = parts.sublist(1).join(':').trim();

          // Alt satırda tanımlı bağımlılık (ör: flutter: sdk: flutter)
          if (value.isEmpty &&
              i + 1 < lines.length &&
              lines[i + 1].contains('sdk:')) {
            final sdkLine = lines[i + 1].trim();
            data['dependencies'][key] = sdkLine;
          } else if (value.isNotEmpty) {
            data['dependencies'][key] = value;
          }
        } else if (inDevDependencies && trimmed.contains(':')) {
          final parts = trimmed.split(':');
          final key = parts[0].trim();
          final value = parts.sublist(1).join(':').trim();

          if (value.isEmpty &&
              i + 1 < lines.length &&
              lines[i + 1].contains('sdk:')) {
            final sdkLine = lines[i + 1].trim();
            data['dev_dependencies'][key] = sdkLine;
          } else if (value.isNotEmpty) {
            data['dev_dependencies'][key] = value;
          }
        }

        if (trimmed.isNotEmpty &&
            !trimmed.startsWith(' ') &&
            trimmed != 'dependencies:' &&
            trimmed != 'dev_dependencies:') {
          if (trimmed.contains(':') &&
              !trimmed.startsWith('name:') &&
              !trimmed.startsWith('description:') &&
              !trimmed.startsWith('version:')) {
            inDependencies = false;
            inDevDependencies = false;
          }
        }
      }

      setState(() {
        pubspecData = data;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Pubspec.yaml yüklenirken hata oluştu: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Uygulama Bilgileri'),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Uygulama Temel Bilgileri
                  Card(
                    color: const Color.fromARGB(255, 204, 220, 187),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pubspecData?['name'] ?? 'Bilinmeyen',
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Versiyon: ${pubspecData?['version'] ?? 'Bilinmeyen'}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            pubspecData?['description'] ??
                                'Açıklama bulunamadı',
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // pubspec.yaml TAMAMINI GÖSTER
                  Card(
                    color: const Color.fromARGB(255, 181, 181, 181),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'pubspec.yaml',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Text(
                              pubspecContent,
                              style: const TextStyle(
                                fontFamily: 'monospace',
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Dependencies
                  if (pubspecData?['dependencies'] != null) ...[
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Kullanılan Paketler',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 12),
                            ...((pubspecData!['dependencies']
                                    as Map<String, String>)
                                .entries
                                .map(
                                  (entry) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 2.0,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.circle,
                                          size: 8,
                                          color: Colors.blue,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          '${entry.key}: ',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(entry.value),
                                      ],
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],

                  // Dev Dependencies
                  if (pubspecData?['dev_dependencies'] != null) ...[
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Geliştirme Paketleri',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 12),
                            ...((pubspecData!['dev_dependencies']
                                    as Map<String, String>)
                                .entries
                                .map(
                                  (entry) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 2.0,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.circle,
                                          size: 8,
                                          color: Colors.orange,
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          '${entry.key}: ',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(entry.value),
                                      ],
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
    );
  }
}
