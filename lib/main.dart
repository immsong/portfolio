import 'package:flutter/material.dart';
import 'config/theme.dart';
import 'widgets/sidebar.dart';
import 'screens/home_screen.dart';
import 'screens/about_screen.dart';
import 'screens/projects_screen.dart';
import 'screens/skills_screen.dart';
import 'screens/contact_screen.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '송윤수입니다',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const PortfolioHomePage(),
    );
  }
}

class PortfolioHomePage extends StatefulWidget {
  const PortfolioHomePage({super.key});

  @override
  State<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  int _selectedIndex = 0;

  // 최소 크기 설정
  static const double minTotalWidth = 1250; // 총 최소 너비
  static const double minHeight = 500; // 최소 높이
  static const double minSidebarWidth = 250; // 스크롤 적용 후 사이드바 고정 너비
  static const double minContentWidth = 1000; // 스크롤 적용 후 컨텐츠 고정 너비

  final List<Widget> _screens = const [
    HomeScreen(),
    AboutScreen(),
    ProjectsScreen(),
    SkillsScreen(),
    ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // 스크롤이 필요한지 체크
          final needsScroll =
              constraints.maxWidth < minTotalWidth ||
              constraints.maxHeight < minHeight;

          if (needsScroll) {
            // 스크롤 필요 - 고정 크기 사용
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: minTotalWidth.clamp(
                    constraints.maxWidth,
                    double.infinity,
                  ),
                  height: minHeight.clamp(
                    constraints.maxHeight,
                    double.infinity,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: minSidebarWidth,
                        child: Sidebar(
                          selectedIndex: _selectedIndex,
                          onMenuTap: (index) {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: minContentWidth,
                        child: _screens[_selectedIndex],
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            // 스크롤 불필요 - Expanded로 1:5 비율 유지
            return Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Sidebar(
                    selectedIndex: _selectedIndex,
                    onMenuTap: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                  ),
                ),
                Expanded(flex: 4, child: _screens[_selectedIndex]),
              ],
            );
          }
        },
      ),
    );
  }
}
