import 'package:blog_app/constant/const.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AdmanScreen extends StatelessWidget {

 late var title = {
    'titles':<String>[
      'من هو المدمن؟',
      'دور الأسرة في علاج الإدمان',
      'طريقة علاج المدمن بالقوة',
      'تعريف الإدمان',
      'علاج إدمان البنات'
    ],
     'link':<String>[
       'https://thefutureeg.com/who-is-the-addict/',
       'https://thefutureeg.com/%d8%b9%d9%84%d8%a7%d8%ac-%d8%a7%d9%84%d8%a7%d8%af%d9%85%d8%a7%d9%86-%d9%88%d8%af%d9%88%d8%b1-%d8%a7%d9%84%d8%a7%d8%b3%d8%b1%d8%a9/',
       'https://thefutureeg.com/treating-an-addict-by-force/',
       'https://thefutureeg.com/defining-drug-addiction',
       'https://thefutureeg.com/women-addiction-treatment'

     ],
//
  } as Map<String, dynamic>;

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
              color: myColor.mainColor,
              width: double.infinity,
              height: 150,
              child: Center(
                child: Text('علاج الإدمان',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: myColor.KLightColor
                  ),),
              ),
            ),
            SizedBox(height: 15,),
            buildTile(context),
          ],
        ),
      ),
    );
  }
  Widget buildTile(context){
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.9,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context,i){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: (){
              launchURL(title['link'][i]);
            },
            title: Text(title['titles'][i],style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            leading: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: myColor.mainColor
              ),
              height: 250,
              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Center(
                  child: Text(title['titles'][i],
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
