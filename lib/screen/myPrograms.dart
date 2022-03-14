import 'package:blog_app/constant/const.dart';
import 'package:blog_app/constant/url_constant.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPrograms  extends StatelessWidget {

  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                child: Center(
                  child: Text('برامجنا العلاجية',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),),
                ),
                height: 150,
                width: double.infinity,
                color: myColor.mainColor
            ),
            SizedBox(height: 20),
            buildPrograms('برنامج علاج الإدمان في  28 يوم','assets/prog2.png','https://thefutureeg.com/%d8%a8%d8%b1%d9%86%d8%a7%d9%85%d8%ac-%d8%b9%d9%84%d8%a7%d8%ac-%d8%a7%d9%84%d8%a5%d8%af%d9%85%d8%a7%d9%86-%d9%81%d9%8a-28-%d9%8a%d9%88%d9%85/'),
            SizedBox(height: 15),
            buildPrograms('برنامج الأثني عشر خطوة', 'assets/prog1.png', 'https://thefutureeg.com/%d8%a8%d8%b1%d9%86%d8%a7%d9%85%d8%ac-%d8%a7%d9%84%d8%a3%d8%ab%d9%86%d9%8a-%d8%b9%d8%b4%d8%b1%d8%a9-%d8%ae%d8%b7%d9%88%d8%a9/'),
            SizedBox(height: 15),
            buildPrograms('برنامج علاج أعراض الإنسحاب', 'assets/prog4.png', 'https://thefutureeg.com/%d8%a8%d8%b1%d9%86%d8%a7%d9%85%d8%ac-%d8%b9%d9%84%d8%a7%d8%ac-%d8%a3%d8%b9%d8%b1%d8%a7%d8%b6-%d8%a7%d9%84%d8%a7%d9%86%d8%b3%d8%ad%d8%a7%d8%a8/'),
            SizedBox(height: 15),
            buildPrograms('برنامج سحب السموم في 7 أيام بدون ألم نهائي', 'assets/prog3.jpg', 'https://thefutureeg.com/%d8%a8%d8%b1%d9%86%d8%a7%d9%85%d8%ac-%d8%b3%d8%ad%d8%a8-%d8%a7%d9%84%d8%b3%d9%85%d9%88%d9%85-%d9%85%d9%86-%d8%a7%d9%84%d8%ac%d8%b3%d9%85/'),
            SizedBox(height: 15),
            // أحجز الان
            Container(
              height: 170,
              width: 250,
              decoration: BoxDecoration(
                color: myColor.mainColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Center(
                      child: Text('لا تدع خوفك من العلاج يؤجل قرارك علي رحلة التعافي حارب\n من أجل مستقبلك',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color:  Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                      ),
                    ),
                  ),
                   SizedBox(height: 5),
                  InkWell(
                      onTap: ()=>Utils.openPhoneCall(phoneNumber: '01029275503'),
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: myColor.KLightColor,
                      ),
                      child: Center(
                        child: Text("أحجز الأن", style: TextStyle(
                            color: myColor.mainColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            buildPrograms('احجز لاصقة علاج الإدمان', 'assets/prog5.png', 'https://thefutureeg.com/%d9%84%d8%a7%d8%b5%d9%82%d8%a9-%d9%84%d8%b9%d9%84%d8%a7%d8%ac-%d8%a7%d9%84%d8%a5%d8%af%d9%85%d8%a7%d9%86/'),
            SizedBox(height: 15,),
            buildPrograms('احجز كبسولة علاج الإدمان','assets/prog7.png', 'https://thefutureeg.com/a-capsule-implanted-under-the-skin-to-treat-addiction/'),
             SizedBox(height: 15,),
            buildPrograms('احجز علاج الإدمان في اسبوع', 'assets/prog6.jpg', 'https://thefutureeg.com/addiction-treatment-in-a-week/'),
            SizedBox(height: 15,),
            buildPrograms('برنامج إعادة التأهيل', 'assets/prog8.jpg', 'https://thefutureeg.com/30-day-rehabilitation-program/')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'واتساب',
        onPressed: ()=> Utils.launchWhatsApp(),
        child: Image.asset('assets/whatsapp.png'),
        elevation: 8.0,
      ),

    );
  }

// String title,image, Function onClick 
  Widget buildPrograms(String title,image,url){
    return InkWell(
      onTap: (){
        launchURL(url);
      },
      child: Card(
        child: Column(
          children: [
            Text(title,
            style: TextStyle(
              color: myColor.mainColor,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
            ),
            Container(
                child: Image.asset(image)),
          ],
        ),
        elevation: 8.0,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            width: 0.2,
            color: myColor.mainColor
          ),
        ),
      ),
    );
  }
}
