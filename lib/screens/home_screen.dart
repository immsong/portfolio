import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // 화면 너비에 따라 폰트 크기 조절
    final titleSize = (screenWidth * 0.03).clamp(24.0, 72.0);
    final bodySize = (screenWidth * 0.015).clamp(14.0, 42.0);
    final smallSize = (screenWidth * 0.008).clamp(10.0, 30.0);

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue.shade700, Colors.purple.shade300],
        ),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '안녕하세요! 👋',
                style: TextStyle(fontSize: titleSize, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Text(
                '멀티플랫폼 소프트웨어 개발자 송윤수 입니다.',
                style: TextStyle(
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                'C++, Rust, Qt, Flutter 등 다양한 기술 스택을 활용해 멀티플랫폼 소프트웨어를 개발해왔습니다.',
                style: TextStyle(fontSize: bodySize, color: Colors.white70),
                textAlign: TextAlign.center,
              ),
              Text(
                'LiDAR 센서 제어와 실시간 데이터 시각화, SDK 개발, CI/CD 환경 구축 등',
                style: TextStyle(fontSize: bodySize, color: Colors.white70),
                textAlign: TextAlign.center,
              ),
              Text(
                '하드웨어 제어부터 UI 개발까지 폭넓은 영역을 경험했습니다.',
                style: TextStyle(fontSize: bodySize, color: Colors.white70),
                textAlign: TextAlign.center,
              ),
              Text(
                '새로운 기술을 적극적으로 탐구하고 구조를 개선하며, 더 나은 성능과 유지보수성을 만드는 데 집중하고 있습니다.',
                style: TextStyle(fontSize: bodySize, color: Colors.white70),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              Text(
                '좌측 메뉴에서 더 알아보세요',
                style: TextStyle(fontSize: smallSize, color: Colors.white70),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
