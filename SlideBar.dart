import 'package:flutter/material.dart';

class SlideBarWidget extends StatelessWidget {
  const SlideBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth * 0.7, // عرض السلايد بار (70% من الشاشة)
      height: screenHeight,
      color: const Color(0xFFE8F5E9), // لون خلفية أخضر فاتح مشابه للتصميم
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: screenHeight * 0.08), // مساحة من الأعلى
          Center(
            child: Column(
              children: [
                // صورة شخصية دائرية
                CircleAvatar(
                  radius: screenWidth * 0.12,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, size: screenWidth * 0.12),
                ),
                const SizedBox(height: 10),
                Text(
                  'اسم المريض',
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.04),
           const Divider(color: Colors.teal, thickness: 1,indent: 20,endIndent: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                _buildDetailItem('العمر', context),
                const SizedBox(height: 16),
                _buildDetailItem('الجنس', context),
                const SizedBox(height: 16),
                _buildDetailItem('الوزن', context),
                const SizedBox(height: 16),
                _buildDetailItem('الطول', context),
                const SizedBox(height: 16),
                _buildDetailItem('زمرة الدم', context),
                const SizedBox(height: 16),
                const Divider(
                  color: Colors.teal,
                  thickness: 1,
                  indent: 0.5,
                  endIndent: 0.5,
                ),
                const SizedBox(height: 16),
                _buildDetailItem('الأدوية', context),
                const SizedBox(height: 16),
                _buildDetailItem('الحساسية', context),
              ],

            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailItem(String title, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.04,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}