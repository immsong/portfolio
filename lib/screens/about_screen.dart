import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
            Icon(Icons.person, size: 80, color: Colors.blue),
            const SizedBox(height: 32),
            Text(
              '소개',
              style: TextStyle(fontSize: titleSize, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 32),
            Text(
              '다양한 산업 분야에서 Linux 기반 소프트웨어와 C++ 개발 경험을 쌓아온 개발자 송윤수 입니다.\n'
              '지난 10년간 Qt/C++을 기반으로 한 UI/시스템 개발부터 RS232/UDP 통신, 센서 제어, SDK 설계까지 수행해왔으며, 특히 하드웨어와 소프트웨어가 맞물리는 환경에서 안정적인 로직 구현과 유지보수가 가능한 구조 설계에 집중해 왔습니다.\n'
              '최근에는 Flutter/C++/Rust 등를 이용한 LiDAR 제어용 SDK 개발, ROS 1/2 Node 개발, 실시간 데이터 처리 뷰어 개발 등을 진행하며 시스템 레벨 동작과 고성능 데이터 스트림 처리에 대한 이해를 확장했습니다. 또한 Jenkins 기반 CI/CD를 적용하여 빌드/테스트 자동화를 구축하여 개발 품질 향상에 기여했습니다.\n'
              '그 전에는 의료기기 개발사에서 RS232/UDP 기반 하드웨어 제어 로직 구현과 Qt/C++ 기반 UI 개발, Python을 이용한 자동화 테스트 시스템 구현을 통해 생산 검증과 안정성을 개선한 경험이 있습니다.\n'
              '보안 솔루션 개발사에서는 Windows API Hooking 및 Agent 개발, Installer 제작 등을 수행하며 시스템 내부 동작에 대한 경험을 쌓았습니다.\n'
              '저는 새로운 기술을 빠르게 습득하고, 기존 구조를 더 효율적으로 개선하는 과정을 좋아합니다. 복잡한 시스템을 이해하고 단순하고 명확한 형태로 다듬어 나가는 일을 즐기며, 이러한 역량을 토대로 소프트웨어 개발 분야에서 지속적으로 성장하고자 합니다.',
              style: TextStyle(fontSize: textSize),
            ),
          ],
        ),
      ),
    );
  }
}
