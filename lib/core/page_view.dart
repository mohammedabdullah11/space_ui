import 'package:flutter/material.dart';
import 'package:space_ui/models/planet_model.dart';

class PageViewScreen extends StatefulWidget {
  final Function(int)? onPageChanged;

  const PageViewScreen({super.key, required this.onPageChanged});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  late final PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _goToPrivioudsPage() {
    if (currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _goToNextPage() {
    if (currentIndex < planets.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // هنا الصور بس
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: planets.length,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
              widget.onPageChanged?.call(index);
            },
            itemBuilder: (context, index) {
              final planet = planets[index];
              return Center(
                child: SizedBox(
                  height: 250,
                  child: Image.asset(
                    planet.image,
                    fit: BoxFit.contain,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 20),
        // هنا الأزرار والاسم ثابتين
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: _goToPrivioudsPage,
              ),
              Text(
                planets[currentIndex].name,
                style: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              _buildButton(
                icon: const ImageIcon(
                  AssetImage("assets/images/arrow 1.png"),
                  color: Colors.white,
                ),
                onPressed: _goToNextPage,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButton({required Widget icon, required VoidCallback onPressed}) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xffEE403D),
        borderRadius: BorderRadius.circular(32),
      ),
      child: IconButton(
        icon: icon,
        onPressed: onPressed,
      ),
    );
  }
}
