import 'package:avril/models/service_providers.dart';
import 'package:avril/screens/men_salon_screen/body/available_center.dart';
import 'package:avril/screens/men_salon_screen/body/avilable_home.dart';
import 'package:avril/screens/men_salon_screen/body/favorite_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // 1. القائمة الأصلية للبيانات
  final List<serviceProviders> _allProviders = const [
    serviceProviders(
      image: 'assets/Ellipse 1440.png',
      name: 'لمسة سحر',
      rate: '4.0',
      star: 'assets/icons/Icon.svg',
      like: 'like',
      isHomeAvailable: true,
      isCenterAvailable: true,
    ),
    serviceProviders(
      image: 'assets/Ellipse 1440.png',
      name: 'صالون الأناقة',
      rate: '4.5',
      star: 'assets/icons/Icon.svg',
      like: 'like',
      isHomeAvailable: true,
      isCenterAvailable: false,
    ),
    serviceProviders(
      image: 'assets/Ellipse 1440.png',
      name: 'مركز VIP',
      rate: '4.8',
      star: 'assets/icons/Icon.svg',
      like: 'like',
      isHomeAvailable: false,
      isCenterAvailable: true,
    ),
    serviceProviders(
      image: 'assets/Ellipse 1440.png',
      name: 'مركز VIP',
      rate: '4.8',
      star: 'assets/icons/Icon.svg',
      like: 'like',
      isHomeAvailable: false,
      isCenterAvailable: true,
    ),
    serviceProviders(
      image: 'assets/Ellipse 1440.png',
      name: 'مركز VIP',
      rate: '4.8',
      star: 'assets/icons/Icon.svg',
      like: 'like',
      isHomeAvailable: true,
      isCenterAvailable: true,
    ),
    serviceProviders(
      image: 'assets/Ellipse 1440.png',
      name: 'مركز VIP',
      rate: '4.8',
      star: 'assets/icons/Icon.svg',
      like: 'like',
      isHomeAvailable: true,
      isCenterAvailable: true,
    ),
    serviceProviders(
      image: 'assets/Ellipse 1440.png',
      name: 'مركز VIP',
      rate: '4.8',
      star: 'assets/icons/Icon.svg',
      like: 'like',
      isHomeAvailable: false,
      isCenterAvailable: true,
    ),
    serviceProviders(
      image: 'assets/Ellipse 1440.png',
      name: 'مركز VIP',
      rate: '4.8',
      star: 'assets/icons/Icon.svg',
      like: 'like',
      isHomeAvailable: true,
      isCenterAvailable: true,
    ),
  ];

  List<serviceProviders> _filteredProviders = [];

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredProviders = _allProviders;
  }

  void _runFilter(String enteredKeyword) {
    List<serviceProviders> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allProviders;
    } else {
      results = _allProviders
          .where(
            (item) =>
                item.name.toLowerCase().contains(enteredKeyword.toLowerCase()),
          )
          .toList();
    }

    setState(() {
      _filteredProviders = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: Colors.grey.shade200),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.03),
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: _searchController,
                      onChanged: (value) =>
                          _runFilter(value), // تشغيل البحث فور الكتابة
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'بحث باسم مقدم الخدمة',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 14,
                          fontFamily: 'ExpoArabic',
                        ),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.grey.shade400,
                          size: 22,
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 16,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),

                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey.shade200),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.03),
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.filter_list,
                      color: Colors.grey.shade600,
                      size: 22,
                    ),
                    onPressed: () {},
                  ),
                ),

                // حقل البحث التفاعلي
              ],
            ),
          ),

          const SizedBox(height: 10),

          // عرض نتائج البحث
          Expanded(
            child: _filteredProviders.isNotEmpty
                ? ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: _filteredProviders.length,
                    itemBuilder: (context, index) {
                      final item = _filteredProviders[index];

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
                            const FavoriteButton(),
                          ],
                        ),
                      );
                    },
                  )
                : const Center(
                    child: Text(
                      'لا توجد نتائج مطابقة لـ البحث',
                      style: TextStyle(fontFamily: 'ExpoArabic'),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
