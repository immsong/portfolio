import 'package:flutter/material.dart';

import 'projects/lidar_viewer_project.dart';
import 'projects/sonicure_project.dart';
import 'projects/imon_project.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

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
            Icon(Icons.work, size: 80, color: Colors.blue),
            const SizedBox(height: 32),
            Text(
              '프로젝트',
              style: TextStyle(
                fontSize: titleSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            Wrap(
              spacing: 24,
              runSpacing: 24,
              children: [
                _buildProjectCard(
                  'LiDAR 3D Viewer',
                  'LiDAR 센서 데이터를 실시간으로 시각화하는 뷰어 애플리케이션',
                  Icons.web,
                  textSize,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LidarViewerProject(),
                      ),
                    );
                  },
                ),
                _buildProjectCard(
                  '의료기기 제어 UI 제작',
                  '초점형/방사형 체외 충격파 치료기 및 초음파 영상 장비 Control UI 제작',
                  Icons.web,
                  textSize,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SonicureProject(),
                      ),
                    );
                  },
                ),
                _buildProjectCard(
                  '자사 솔루션(iMon) 에이전트 개발',
                  '근무관리, 보안, 인터넷 차단 솔루션 등 자사 제품 개발 및 유지보수',
                  Icons.web,
                  textSize,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ImonProject()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProjectCard(
    String title,
    String description,
    IconData icon,
    double textSize, {
    Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Card(
        elevation: 4,
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, size: textSize * 2, color: Colors.blue),
              const SizedBox(height: 16),
              Text(
                title,
                style: TextStyle(
                  fontSize: textSize * 1.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(description, style: TextStyle(fontSize: textSize)),
            ],
          ),
        ),
      ),
    );
  }
}
