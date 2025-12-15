import 'package:flutter/material.dart';

class ImonProject extends StatelessWidget {
  const ImonProject({super.key});

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
                '자사 솔루션(iMon) 에이전트 개발',
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
                      '2016.03 - 2019.08',
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
                      'SQLITE',
                      style: TextStyle(fontSize: smallSize),
                    ),
                    backgroundColor: Colors.blue.shade100,
                  ),
                  Chip(
                    label: Text('TCP', style: TextStyle(fontSize: smallSize)),
                    backgroundColor: Colors.blue.shade100,
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // 프로젝트 이미지
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/imon.png',
                  width: screenWidth * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 32),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/imon_2.png',
                  width: screenWidth * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 32),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/imon_3.png',
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
                '근무관리, 보안, 인터넷 차단 솔루션 등 자사 제품 개발 및 유지보수',
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
              _buildBulletPoint('Qt를 이용한 UI 제작', smallSize),
              _buildBulletPoint('주 52시간 근무시간 관리를 위한 솔루션 에이전트 제작', smallSize),
              _buildBulletPoint(
                '백신 검사로 분류된 기준정보를 이용해 안전파일만 자동 허용하여 악성파일로부터 PC를 보호하는 보안 솔루션 에이전트 제작',
                smallSize,
              ),
              _buildBulletPoint(
                '특정 DB 의 데이터를 연동하여 해당 조건에 맞지 않는 IP의 인터넷 포트 패킷을 리다이렉트 하여 사용자의 인터넷 사용을 차단하는 솔루션 제작 (스위치 미러 포트 이용 )',
                smallSize,
              ),
              _buildBulletPoint(
                'DLL Injection를 이용한 API 후킹을 이용하여 프로세스 실행/차단 및 프로세스 자가보호 기능 구현 (madshi driver 사용)',
                smallSize,
              ),
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
              _buildBulletPoint('iMon 제품군 제품화 및 상용화에 핵심 개발 인력으로 기여', smallSize),
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
