import 'package:flutter/material.dart';
import 'package:get/get.dart'; // استيراد مكتبة GetX
import 'package:midical/route/RotePage.dart';

// ignore: must_be_immutable
class BottomNavigationBarSection extends StatefulWidget {
  int currentIndex; // قيمة المؤشر الحالية يتم تمريرها
   BottomNavigationBarSection({super.key, required this.currentIndex});

  @override
  State<BottomNavigationBarSection> createState() =>
      _BottomNavigationBarSectionState();
}

class _BottomNavigationBarSectionState
    extends State<BottomNavigationBarSection> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("image/Group 13.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: widget.currentIndex, // استخدام widget.currentIndex
          selectedItemColor: const Color(0xFF5C709A),
          unselectedItemColor: Colors.white70,
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedFontSize: screenWidth * 0.03,
          unselectedFontSize: screenWidth * 0.03,
          iconSize: screenWidth * 0.07,
          onTap: (index) {
            setState(() {
              widget.currentIndex = index; // تحديث currentIndex
            });
            // تمرير الـ index كـ arguments في التنقل
            Get.toNamed(
              RouteClass.GetHomePage(),
              arguments: index, // تمرير index إلى الصفحة الجديدة
            );
          },
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.currentIndex = 0; // تحديث currentIndex
                  });
                  Get.toNamed(RouteClass.profileInfoPage, arguments: 0);
                },
                child: _buildIcon(
                  "image/icons/profile.png",
                  isActive: widget.currentIndex == 0, // مقارنة مع widget.currentIndex
                ),
              ),
              label: 'الحساب',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.currentIndex = 1;
                  });
                  // Get.toNamed(RouteClass.shopPage, arguments: 1);
                },
                child: _buildIcon(
                  "image/icons/shop.png",
                  isActive: widget.currentIndex == 1,
                ),
              ),
              label: 'المتجر',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.currentIndex = 2;
                  });
                  Get.toNamed(RouteClass.GetHomePage(), arguments: 2);
                },
                child: _buildIcon(
                  "image/icons/contract.png",
                  isActive: widget.currentIndex == 2,
                ),
              ),
              label: 'الصفحة الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.currentIndex = 3;
                  });
                  // Get.toNamed(RouteClass.hospitalPage, arguments: 3);
                },
                child: _buildIcon(
                  "image/icons/Hospital.png",
                  isActive: widget.currentIndex == 3,
                ),
              ),
              label: 'المشافي',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    widget.currentIndex = 4;
                  });
                  // Get.toNamed(RouteClass.doctorsPage, arguments: 4);
                },
                child: _buildIcon(
                  "image/icons/doctors.png",
                  isActive: widget.currentIndex == 4,
                ),
              ),
              label: 'الأطباء',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(String assetPath, {required bool isActive}) {
    return Container(
      padding: EdgeInsets.all(isActive ? 8 : 0),
      decoration: isActive
          ? const BoxDecoration(
              color: Color(0xFF5C709A),
              shape: BoxShape.circle,
            )
          : null,
      child: Image.asset(
        assetPath,
        width: 30,
        height: 30,
        color: isActive ? Colors.white : Colors.white70,
      ),
    );
  }
}
