import 'package:blog_app/constant/const.dart';
import 'package:blog_app/constant/url_constant.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContantScreen extends StatelessWidget {

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
                  child: Text('تواصل معانا ',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),),
                ),
                height: 150,
                width: double.infinity,
                color: myColor.mainColor
            ),
            SizedBox(height: 25,),

            buildListTileContact('موقعنا',Icons.location_on),
             Padding(
                 padding: EdgeInsets.only(left: 20),
                 child: buildSubTextContact('القاهره الجديده.. التجمع الخامس، 11865-التجمع الأول - أكتوبر - مدينة العبور - مدينة  الشروق - الاسكندريه - طنطا - الغردقه')),

            SizedBox(height: 30,),
            buildListTileContact('ساعات العمل',Icons.access_time),
            buildSubTextContact('طوال أيام الاسبوع 24/7'),

            SizedBox(height: 30,),
            buildListTileContact('للتواصل',Icons.phone_enabled),

            //phone Number
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text(':الهاتف',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black
                  ),),
                  SizedBox(width: 5,),
                  InkWell(
                     onTap: ()=>Utils.openPhoneCall(phoneNumber: '01029275503'),
                    child: Text('01029275503',style: TextStyle(
                        color: myColor.mainColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ),
            ),
            //email
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  Text(':البريد الإلكتروني',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black
                  ),),
                  SizedBox(width: 5,),
                  InkWell(
                    onTap: ()=>Utils.openEmail(toEmail: 'info@thefutureeg.com', subject: 'مرحبا بك', body: 'تحب نساعدك ازاي'),
                    child: Text('info@thefutureeg.com',style: TextStyle(
                        color: myColor.mainColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ),
            ),




            //SoicalMedia
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildSocialContact('assets/facebook-app-symbol.png','https://www.facebook.com/futurehospital3',myColor.mainColor),
                SizedBox(width: 10,),
                buildSocialContact('assets/instagram.png','https://www.instagram.com/future_hospital/',myColor.mainColor),
                SizedBox(width: 10,),
                Image.asset('assets/linkedin.png',width: 30,height: 50,),
                SizedBox(width: 10,),
                Image.asset('assets/youtube.png',width: 30,height: 50,),
                SizedBox(width: 10,),
                buildSocialContact('assets/snapchat.png','https://www.snapchat.com/add/frc11111',myColor.mainColor),
                SizedBox(width: 10,),
                buildSocialContact('assets/twitter.png','https://twitter.com/futurehospital0',myColor.mainColor),
              ],
            ),


            //Mail
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Email:',style: TextStyle(
                    fontSize: 15,
                    color: myColor.mainColor
                ),),
                SizedBox(width: 5,),
                Text('info@thefutureeg.com',
                  style: TextStyle(
                    color: myColor.mainColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
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



  Widget buildListTileContact(String title,IconData icon){
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
      ),
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Icon(icon,color: myColor.mainColor,size: 60,),
          SizedBox(width: 10),
          Text(title,style: TextStyle(
            color: myColor.mainColor,
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),

        ],
      ),
    );
  }


  Widget buildSubTextContact(String text){
    return Padding(
      padding: const EdgeInsets.only(right: 60),
      child: Align(
        alignment: Alignment.topRight,
        child: Text(text,
        style:TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }


  Widget buildSocialContact(String image,url,Color color){
    return InkWell(
        onTap: ()async{
          launchURL(url);
        },
        child: Image.asset(image,width: 30,height: 50,color: color,));

  }
}
