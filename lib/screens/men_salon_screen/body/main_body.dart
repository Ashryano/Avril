import 'package:avril/models/service_providers.dart';
import 'package:avril/screens/men_salon_screen/body/available_center.dart';
import 'package:avril/screens/men_salon_screen/body/avilable_home.dart';
import 'package:avril/screens/men_salon_screen/body/favorite_button.dart';
import 'package:avril/screens/men_salon_screen/body/searh%20and%20filter/search_and_filter.dart';
import 'package:avril/screens/salon_view_screen/salon_view_about_us.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final TextEditingController _searchController = TextEditingController();

  String _searchQuery = '';
  Map<String, bool> _activeFilters = {
    'isHomeAvailable': false,
    'isCenterAvailable': false,
  };

  List<serviceProviders> get _allProviders => [
    serviceProviders(
      id: '1',
      image: 'assets/Ellipse 1440.png',
      name: 'لمسة سحر',
      rate: '4.0',
      star: 'assets/icons/Icon.svg',
      like: 'like',
      isHomeAvailable: true,
      isCenterAvailable: true,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SalonViewAboutUs(providerId: '1'),
          ),
        );
      },
    ),
    serviceProviders(
      id: '2',
      image: 'assets/Ellipse 1440.png',
      name: 'صالون الأناقة',
      rate: '4.5',
      star: 'assets/icons/Icon.svg',
      like: 'like',
      isHomeAvailable: true,
      isCenterAvailable: false,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SalonViewAboutUs(providerId: '2'),
          ),
        );
      },
    ),
    serviceProviders(
      id: '3',
      image: 'assets/Ellipse 1440.png',
      name: 'مركز VIP',
      rate: '4.8',
      star: 'assets/icons/Icon.svg',
      like: 'like',
      isHomeAvailable: false,
      isCenterAvailable: true,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SalonViewAboutUs(providerId: '3'),
          ),
        );
      },
    ),
    serviceProviders(
      id: '4',
      image: 'assets/Ellipse 1440.png',
      name: 'مركز VIP',
      rate: '4.8',
      star: 'assets/icons/Icon.svg',
      like: 'like',
      isHomeAvailable: false,
      isCenterAvailable: true,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SalonViewAboutUs(providerId: '4'),
          ),
        );
      },
    ),
    serviceProviders(
      id: '5',
      image: 'assets/Ellipse 1440.png',
      name: 'مركز VIP',
      rate: '4.8',
      star: 'assets/icons/Icon.svg',
      like: 'like',
      isHomeAvailable: true,
      isCenterAvailable: true,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SalonViewAboutUs(providerId: '5'),
          ),
        );
      },
    ),
    serviceProviders(
      id: '6',
      image: 'assets/Ellipse 1440.png',
      name: 'مركز VIP',
      rate: '4.8',
      star: 'assets/icons/Icon.svg',
      like: 'like',
      isHomeAvailable: true,
      isCenterAvailable: true,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SalonViewAboutUs(providerId: '6'),
          ),
        );
      },
    ),
    serviceProviders(
      id: '7',
      image: 'assets/Ellipse 1440.png',
      name: 'مركز VIP',
      rate: '4.8',
      star: 'assets/icons/Icon.svg',
      like: 'like',
      isHomeAvailable: false,
      isCenterAvailable: true,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SalonViewAboutUs(providerId: '7'),
          ),
        );
      },
    ),
    serviceProviders(
      id: '8',
      image: 'assets/Ellipse 1440.png',
      name: 'مركز VIP',
      rate: '4.8',
      star: 'assets/icons/Icon.svg',
      like: 'like',
      isHomeAvailable: true,
      isCenterAvailable: true,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SalonViewAboutUs(providerId: '8'),
          ),
        );
      },
    ),
  ];
  List<serviceProviders> get _filteredProviders {
    return _allProviders.where((provider) {
      final matchesSearch = provider.name.contains(_searchQuery);

      final matchesHome = _activeFilters['isHomeAvailable'] == true
          ? provider.isHomeAvailable
          : true;

      final matchesCenter = _activeFilters['isCenterAvailable'] == true
          ? provider.isCenterAvailable
          : true;

      return matchesSearch && matchesHome && matchesCenter;
    }).toList();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filteredList = _filteredProviders;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SearchAndFilterBar(
            searchController: _searchController,
            onSearchChanged: (query) {
              setState(() {
                _searchQuery = query;
              });
            },
            onFilterApplied: (filters) {
              setState(() {
                _activeFilters = filters;
              });
            },
          ),

          const SizedBox(height: 10),

          // عرض قائمة الصالونات المفلترة
          Expanded(
            child: filteredList.isEmpty
                ? const Center(
                    child: Text(
                      'لا توجد نتائج مطابقة',
                      style: TextStyle(fontFamily: 'ExpoArabic'),
                    ),
                  )
                : ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: filteredList.length,
                    itemBuilder: (context, index) {
                      final item = filteredList[index];

                      return Container(
                        margin: const EdgeInsets.only(bottom: 12.0),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.08),
                              spreadRadius: .1,
                              blurRadius: 8,
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    SalonViewAboutUs(providerId: item.id),
                              ),
                            );
                          },
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              CircleAvatar(
                                radius: 37,
                                backgroundImage: AssetImage(item.image),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    item.name,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        item.star,
                                        width: 14,
                                        height: 14,
                                      ),
                                      const SizedBox(width: 4),
                                      Text(item.rate),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: [
                                      if (item.isCenterAvailable)
                                        const AvailableCenter(),
                                      if (item.isCenterAvailable &&
                                          item.isHomeAvailable)
                                        const SizedBox(width: 6),
                                      if (item.isHomeAvailable)
                                        const AvilableHome(),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              FavoriteButton(providerId: item.id),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
