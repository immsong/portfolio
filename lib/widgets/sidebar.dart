import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onMenuTap;

  const Sidebar({
    super.key,
    required this.selectedIndex,
    required this.onMenuTap,
  });

  final List<Map<String, dynamic>> menuItems = const [
    {'title': '홈', 'icon': Icons.home},
    {'title': '소개', 'icon': Icons.person},
    {'title': '프로젝트', 'icon': Icons.work},
    {'title': '기술스택', 'icon': Icons.code},
    {'title': '연락처', 'icon': Icons.contact_mail},
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    // 화면 너비에 따라 폰트 크기 조절
    final textSize = (screenWidth * 0.014).clamp(10.0, 40.0);
    final smallSize = (screenWidth * 0.01).clamp(10.0, 30.0);

    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: 300), // 최소 너비만 설정
      child: Container(
        color: Colors.grey.shade900,
        child: Column(
          children: [
            // 프로필 영역
            Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage('assets/profile_photo.jpg'),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '송윤수',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: textSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Multi-platform Software Developer',
                    style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: smallSize,
                    ),
                  ),
                ],
              ),
            ),
            Divider(color: Colors.grey.shade700),
            // 메뉴 항목들
            Expanded(
              child: ListView.builder(
                itemCount: menuItems.length,
                itemBuilder: (context, index) {
                  return _buildMenuItem(index, menuItems[index], textSize);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(int index, Map<String, dynamic> item, double fontSize) {
    bool isSelected = selectedIndex == index;

    return InkWell(
      onTap: () => onMenuTap(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue.shade700 : Colors.transparent,
          border: Border(
            left: BorderSide(
              color: isSelected ? Colors.blue : Colors.transparent,
              width: 4,
            ),
          ),
        ),
        child: Row(
          children: [
            Icon(
              item['icon'],
              color: isSelected ? Colors.white : Colors.grey.shade400,
              size: fontSize,
            ),
            const SizedBox(width: 16),
            Text(
              item['title'],
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey.shade400,
                fontSize: fontSize,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
