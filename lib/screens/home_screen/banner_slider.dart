import 'dart:async';
import 'package:flutter/material.dart';

class BannerSlider extends StatefulWidget {
  final List<String> bannerImages;

  const BannerSlider({super.key, required this.bannerImages});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  final PageController _pageController = PageController();
  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_pageController.hasClients && widget.bannerImages.isNotEmpty) {
        int nextPage = _currentIndex + 1;
        if (nextPage >= widget.bannerImages.length) {
          nextPage = 0;
        }
        _pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.bannerImages.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            itemCount: widget.bannerImages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    widget.bannerImages[index],
                    fit: BoxFit.fill,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.bannerImages.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 3),
              height: 6,
              width: _currentIndex == index ? 24 : 6,
              decoration: BoxDecoration(
                color: _currentIndex == index
                    ? Colors.black
                    : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
