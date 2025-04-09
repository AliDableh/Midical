import 'package:flutter/material.dart';
class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/a.png"),
                fit: BoxFit.cover
            )
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05, // تباعد أفقي
          ),
          child: Stack(
        children: [
        Positioned(
        top: screenWidth * 0.24, // قم بضبط القيم حسب التصميم
        right: screenWidth * 0.55, // قم بضبط القيم حسب التصميم
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.end, // النصوص بمحاذاة اليمين
        children: [
       Text(
  "احصل على سجلّك\nالطبي الآن",
            style: TextStyle(
              fontSize: screenWidth * 0.05,
              color: Colors.white,
             
            ),
          ),
          SizedBox(height: screenWidth * 0.02),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.14,
                vertical: screenWidth * 0.01,
              ),
            ),
            child: Text(
              "هنا",
              style: TextStyle(
                color: Colors.green,
                fontSize: screenWidth * 0.045,
              ),
            ),
          ),
        ],
      ),
    ),
  ],
)
        ),
      ],
    );
  }
}
