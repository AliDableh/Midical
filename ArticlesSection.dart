import 'package:flutter/material.dart';

class ArticlesSection extends StatelessWidget {
  const ArticlesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.05,
        vertical: screenWidth * 0.03,
      ),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: screenWidth * 0.03),
          child: const ArticleCard(),
        );
      },
    );
  }
}

class ArticleCard extends StatefulWidget {
  const ArticleCard({super.key});

  @override
  _ArticleCardState createState() => _ArticleCardState();
}

class _ArticleCardState extends State<ArticleCard> {
  bool _isExpanded = false;

  String articleText =
      "إذا كنت تحتاج إلى تشخيص مرض معين، فمن الأفضل استشارة طبيب مختص أو محترف في المجال الصحي للحصول على تشخيص دقيق. تشخيص الأمراض يتطلب معرفة كاملة بالأعراض والتاريخ الطبي للمريض، بالإضافة إلى الفحوصات الطبية المناسبة.";

  String partOne = "";
  String partTwo = "";

  @override
  void initState() {
    super.initState();
    _splitText(articleText);
  }

  // دالة تقسيم النص عند الفراغ
  void _splitText(String text) {
    int splitIndex = 100; // تحديد المكان الذي تريد أن تقسم فيه النص
    int spaceIndex = text.lastIndexOf(' ', splitIndex); // البحث عن آخر فراغ قبل splitIndex

    if (spaceIndex != -1) {
      partOne = text.substring(0, spaceIndex); // الجزء الأول من النص
      partTwo = text.substring(spaceIndex + 1); // الجزء الثاني من النص
    } else {
      partOne = text; // إذا لم يكن هناك فراغ قريب، لا نقسم
      partTwo = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 2,
        color: const Color(0xFFFAF3FF), // خلفية ناعمة مشابهة للصورة
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: screenWidth * 0.06,
                    backgroundColor: const Color(0xFFDCC6E0), // لون مشابه للإطار
                    child: const Icon(Icons.account_circle, color: Colors.white, size: 30),
                  ),
                  SizedBox(width: screenWidth * 0.03),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "د. محمد",
                        style: TextStyle(
                          fontSize: screenWidth * 0.045,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "اختصاصي أمراض جلدية",
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: screenWidth * 0.03),
              Text(
                partOne,
                style: TextStyle(fontSize: screenWidth * 0.035, color: Colors.black),
                maxLines: _isExpanded ? null : 2,
                overflow: _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
              ),
              Visibility(
                visible: _isExpanded,
                child: Text(
                  partTwo,
                  style: TextStyle(fontSize: screenWidth * 0.035, color: Colors.black),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      _isExpanded = !_isExpanded;
                    });
                  },
                  child: Text(
                    _isExpanded ? "قراءة أقل" : "قراءة المزيد",
                    style: TextStyle(
                      color: const Color(0xFF8A56AC), // لون الزر مشابه للصورة
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
