import 'package:flutter/material.dart';

class SonicureProject extends StatelessWidget {
  const SonicureProject({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // 화면 너비에 따라 폰트 크기 조절
    final titleSize = (screenWidth * 0.03).clamp(24.0, 72.0);
    final textSize = (screenWidth * 0.015).clamp(10.0, 34.0);
    final smallSize = textSize * 0.8;

    return Scaffold(
      body: Align(
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(64),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 뒤로가기 버튼
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
                padding: EdgeInsets.zero,
              ),
              const SizedBox(height: 16),

              // 프로젝트 제목
              Text(
                'Sonicure 제품 제어 UI 제작',
                style: TextStyle(
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),

              // 기간 및 기술스택
              Wrap(
                spacing: 12,
                children: [
                  Chip(
                    label: Text(
                      '2019.08 - 2024.05',
                      style: TextStyle(fontSize: smallSize),
                    ),
                    avatar: Icon(Icons.calendar_today),
                  ),
                  Chip(
                    label: Text('Qt', style: TextStyle(fontSize: smallSize)),
                    backgroundColor: Colors.blue.shade100,
                  ),
                  Chip(
                    label: Text('C++', style: TextStyle(fontSize: smallSize)),
                    backgroundColor: Colors.blue.shade100,
                  ),
                  Chip(
                    label: Text('Boost', style: TextStyle(fontSize: smallSize)),
                    backgroundColor: Colors.blue.shade100,
                  ),
                  Chip(
                    label: Text(
                      'Python',
                      style: TextStyle(fontSize: smallSize),
                    ),
                    backgroundColor: Colors.blue.shade100,
                  ),
                  Chip(
                    label: Text(
                      'Flutter',
                      style: TextStyle(fontSize: smallSize),
                    ),
                    backgroundColor: Colors.blue.shade100,
                  ),
                  Chip(
                    label: Text(
                      'SQLITE',
                      style: TextStyle(fontSize: smallSize),
                    ),
                    backgroundColor: Colors.blue.shade100,
                  ),
                  Chip(
                    label: Text(
                      'WebSocket',
                      style: TextStyle(fontSize: smallSize),
                    ),
                    backgroundColor: Colors.blue.shade100,
                  ),
                  Chip(
                    label: Text('RS232', style: TextStyle(fontSize: smallSize)),
                    backgroundColor: Colors.blue.shade100,
                  ),
                  Chip(
                    label: Text('UDP', style: TextStyle(fontSize: smallSize)),
                    backgroundColor: Colors.blue.shade100,
                  ),
                  Chip(
                    label: Text(
                      'OpenCV',
                      style: TextStyle(fontSize: smallSize),
                    ),
                    backgroundColor: Colors.blue.shade100,
                  ),
                  Chip(
                    label: Text(
                      'Wireshark',
                      style: TextStyle(fontSize: smallSize),
                    ),
                    backgroundColor: Colors.blue.shade100,
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // 프로젝트 이미지
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/sonicure.png',
                  width: screenWidth * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 32),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/sonicure_2.png',
                  width: screenWidth * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 32),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/sonicure_3.png',
                  width: screenWidth * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 32),

              // 프로젝트 설명
              Text(
                '프로젝트 개요',
                style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                '체외충격파 치료기, 초음파 영상장비 등 의료기기 제어 소프트웨어 개발',
                style: TextStyle(fontSize: smallSize),
              ),
              const SizedBox(height: 32),

              // 주요 작업 내용 (글머리기호)
              Text(
                '주요 작업',
                style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              _buildBulletPoint(
                'Sonicure 제품 설계, 개발, 시험, 양산 유지보수 등 전체 개발 프로세스 참여',
                smallSize,
              ),
              _buildBulletPoint('Qt/C++ 기반 UI 개발', smallSize),
              _buildBulletPoint(
                'RS232 및 UDP 기반 하드웨어 통신 모듈 설계 및 유지보수',
                smallSize,
              ),
              _buildBulletPoint(
                '영상 회전, Pseudo Color, Caliper, Frame Average 등 영상 처리',
                smallSize,
              ),
              _buildBulletPoint(
                'Python 기반 자동화 테스트 프로그램 및 데이터 분석 도구 제작',
                smallSize,
              ),
              _buildBulletPoint('Flutter 를 이용한 Android 버전 GUI 개발', smallSize),
              const SizedBox(height: 32),

              // 성과
              Text(
                '성과',
                style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              _buildBulletPoint(
                'Python 기반 자동화 테스트 프로그램 및 데이터 분석 도구 제작으로 양산 검증 시간 단축 및 품질 신뢰성 확보',
                smallSize,
              ),
              _buildBulletPoint(
                '의료기기 설계부터 인증, 양산까지 전주기 개발 경험 확보로 문제 해결 역량 강화',
                smallSize,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBulletPoint(String text, double fontSize) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• ',
            style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(text, style: TextStyle(fontSize: fontSize)),
          ),
        ],
      ),
    );
  }
}
