import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  // URL 열기 함수
  Future<void> _launchUrl(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $urlString');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // 화면 너비에 따라 폰트 크기 조절
    final titleSize = (screenWidth * 0.03).clamp(24.0, 72.0);
    final textSize = (screenWidth * 0.015).clamp(10.0, 34.0);

    return Align(
      alignment: Alignment.topLeft,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.contact_mail, size: 80, color: Colors.blue),
            const SizedBox(height: 32),
            Text(
              '연락처',
              style: TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            _buildContactItem(
              Icons.email,
              '이메일',
              'immsong@icloud.com',
              'mailto:immsong@icloud.com',
              textSize,
            ),
            const SizedBox(height: 16),
            _buildContactItem(
              Icons.code,
              'GitHub',
              'github.com/immsong',
              'https://github.com/immsong',
              textSize,
            ),
            const SizedBox(height: 16),
            _buildContactItem(
              Icons.work,
              'LinkedIn',
              'linkedin.com/in/mark-song-150077394',
              'https://www.linkedin.com/in/mark-song-150077394/',
              textSize,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactItem(
    IconData icon,
    String label,
    String value,
    String url,
    double fontSize,
  ) {
    return InkWell(
      onTap: () => _launchUrl(url),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, color: Colors.blue, size: fontSize * 1.5),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: TextStyle(fontSize: fontSize, color: Colors.grey.shade600),
                  ),
                  Text(
                    value,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue, // 링크처럼 보이게
                      decoration: TextDecoration.underline, // 밑줄 추가
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 8),
              Icon(Icons.open_in_new, size: 16, color: Colors.grey), // 링크 아이콘
            ],
          ),
        ),
      ),
    );
  }
}
