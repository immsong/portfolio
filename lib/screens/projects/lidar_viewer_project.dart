import 'package:flutter/material.dart';

class LidarViewerProject extends StatelessWidget {
  const LidarViewerProject({super.key});

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
                'LiDAR 3D Viewer',
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
                      '2024.05 - 2025.12',
                      style: TextStyle(fontSize: smallSize),
                    ),
                    avatar: Icon(Icons.calendar_today),
                  ),
                  Chip(
                    label: Text(
                      'Flutter',
                      style: TextStyle(fontSize: smallSize),
                    ),
                    backgroundColor: Colors.blue.shade100,
                  ),
                  Chip(
                    label: Text('Rust', style: TextStyle(fontSize: smallSize)),
                    backgroundColor: Colors.blue.shade100,
                  ),
                  Chip(
                    label: Text('C++', style: TextStyle(fontSize: smallSize)),
                    backgroundColor: Colors.blue.shade100,
                  ),
                  Chip(
                    label: Text('Qt', style: TextStyle(fontSize: smallSize)),
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
                    label: Text('UDP', style: TextStyle(fontSize: smallSize)),
                    backgroundColor: Colors.blue.shade100,
                  ),
                  Chip(
                    label: Text('RS485', style: TextStyle(fontSize: smallSize)),
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
                  'assets/lidar_viewer.png',
                  width: screenWidth * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 32),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/lidar_viewer_2.png',
                  width: screenWidth * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 32),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/lidar_viewer_3.png',
                  width: screenWidth * 0.3,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 32),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/lidar_viewer_4.png',
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
                'LiDAR 센서 제어 및 실시간 데이터 시각화용 뷰어 애플리케이션',
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
              _buildBulletPoint('Qt/C++로 작성된 레거시 코드 유지보수', smallSize),
              _buildBulletPoint(
                'Qt/C++로 작성된 레거시 코드를 Flutter/Rust 기반으로 전환하여 멀티 플랫폼 환경에 대응 (Windows, Linux, Android 등)',
                smallSize,
              ),
              _buildBulletPoint(
                'LiDAR 센서 제어를 위한 Rust 기반 SDK 설계 및 개발',
                smallSize,
              ),
              _buildBulletPoint(
                'Flutter FFI를 통한 Rust 네이티브 모듈 통합으로 멀티플랫폼 환경에서 일관된 성능 보장',
                smallSize,
              ),
              _buildBulletPoint(
                '실시간 3D 포인트 클라우드 렌더링을 위한 커스텀 Flutter 패키지 설계 및 구현',
                smallSize,
              ),
              _buildBulletPoint(
                'LiDAR 연동을 위한 ROS Node 개발 및 외부 고객사 환경 지원',
                smallSize,
              ),
              _buildBulletPoint(
                'Jenkins 기반 CI/CD 환경 구축을 통한 빌드/테스트/배포 자동화',
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
              _buildBulletPoint(
                '기존 Qt/C++ UI를 Flutter로 성공적으로 전환 하여 UI 개발효율성과 유지보수성 향상',
                smallSize,
              ),
              _buildBulletPoint(
                'Rust 기반 LiDAR 제어 SDK를 개발하여, 향후 고객사 연동 및 사업 확장 기반을 마련',
                smallSize,
              ),
              _buildBulletPoint(
                'ROS Node를 개발하여 외부 고객사에 제공, 다양한 환경에서 LiDAR 제어 및 연동 지원',
                smallSize,
              ),
              _buildBulletPoint(
                'Jenkins CI/CD 파이프라인 구축을 통해 코드 품질 관리 및 배포 프로세스 표준화',
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
