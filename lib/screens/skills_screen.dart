import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

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
            Icon(Icons.code, size: 80, color: Colors.blue),
            const SizedBox(height: 32),
            Text(
              '기술 스택',
              style: TextStyle(
                fontSize: titleSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            _buildSkillCategory('Technical Skills', [
              'Boost',
              'C++',
              'Dart',
              'DB',
              'Flutter',
              'NSIS',
              'Python',
              'Qt',
              'Rust',
            ], textSize),
            const SizedBox(height: 24),
            _buildSkillCategory('Tools', [
              'Bitbucket',
              'Cursor',
              'Docker',
              'Git',
              'GitHub',
              'GitLab',
              'Jenkins',
              'Jira',
              'Visual Studio',
              'VS Code',
              'Wireshark',
            ], textSize),
          ],
        ),
      ),
    );
  }

  Widget _buildSkillCategory(
    String category,
    List<String> skills,
    double fontSize,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          category,
          style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: skills.map((skill) {
            return Chip(
              label: Text(skill, style: TextStyle(fontSize: fontSize)),
              backgroundColor: Colors.blue.shade100,
            );
          }).toList(),
        ),
      ],
    );
  }
}
