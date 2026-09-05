import 'package:avril/screens/men_salon_screen/body/searh%20and%20filter/filter_bottom_sheet.dart';
import 'package:flutter/material.dart';

class SearchAndFilterBar extends StatelessWidget {
  final Function(Map<String, bool>)? onFilterApplied;
  final Function(String)? onSearchChanged;
  final TextEditingController? searchController;

  const SearchAndFilterBar({
    super.key,
    this.onFilterApplied,
    this.onSearchChanged,
    this.searchController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
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
                Icons.filter_list_rounded,
                color: Colors.grey.shade600,
                size: 22,
              ),
              onPressed: () async {
                final result = await showModalBottomSheet<Map<String, bool>>(
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  builder: (context) => const FilterBottomSheet(),
                );

                if (result != null && onFilterApplied != null) {
                  onFilterApplied!(
                    result,
                  ); // إرسال خيارات الفلتر للشاشة الرئيسية
                }
              },
            ),
          ),

          const SizedBox(width: 10),

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
                controller: searchController,
                onChanged: onSearchChanged,
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: 'بحث باسم مقدم الخدمة',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 14,
                    fontFamily: 'ExpoArabic',
                  ),
                  prefixIcon: Icon(
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
        ],
      ),
    );
  }
}
