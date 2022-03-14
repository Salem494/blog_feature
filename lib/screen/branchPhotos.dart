import 'package:blog_app/constant/const.dart';
import 'package:flutter/material.dart';

class BranchPhotos extends StatelessWidget {
  List<String> octobar =[
    'assets/octobar/1.png',
    'assets/octobar/2.png',
    'assets/octobar/3.png',
    'assets/octobar/4.png',
    'assets/octobar/5.png',
    'assets/octobar/6.png',
    'assets/octobar/7.png',
    'assets/octobar/8.png',
  ];

  List<String> girls = [
    'assets/Girls/11.png',
    'assets/Girls/12.png',
    'assets/Girls/13.png',
    'assets/Girls/14.png',
    'assets/Girls/15.png',
    'assets/Girls/16.png',
    'assets/Girls/17.png',
  ];
  List<String> shorok = [
    'assets/shourok/20.png',
    'assets/shourok/21.png',
    'assets/shourok/22.png',
    'assets/shourok/23.png',
    'assets/shourok/24.png',
    'assets/shourok/25.png',
    'assets/shourok/26.png',
    'assets/shourok/27.png',
    'assets/shourok/28.png',
    'assets/shourok/29.png',
    'assets/shourok/30.png',
    'assets/shourok/31.png',
    'assets/shourok/32.png',
    'assets/shourok/33.png',
  ];
  List<String> shorok2 = [
    'assets/shouok2/30.png',
    'assets/shouok2/31.png',
    'assets/shouok2/32.png',
    'assets/shouok2/33.png',
    'assets/shouok2/34.png',
    'assets/shouok2/35.png',
    'assets/shouok2/36.png',
    'assets/shouok2/37.png',
    'assets/shouok2/38.png',
    'assets/shouok2/39.png',
    'assets/shouok2/40.png',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: myColor.mainColor,
          title: Text('صور فروعنا',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(text: ' أكتوبر'),
              Tab(text: ' الشروق',),
              Tab(text: ' الشروق 2',),
              Tab(text: ' تأهيل البنات ',),
            ],
          ),
        ),
        body:TabBarView(
          children: [
            //octobar
          ListView.builder(
            shrinkWrap: true,
//              physics: NeverScrollableScrollPhysics(),
              itemCount: octobar.length,
              itemBuilder: (context,i){
              return Image.asset(octobar[i]);
          }),
            //shorok
            ListView.builder(
                shrinkWrap: true,
//              physics: NeverScrollableScrollPhysics(),
                itemCount: shorok.length,
                itemBuilder: (context,i){
                  return Image.asset(shorok[i]);
                }),
            //shorok2
            ListView.builder(
                shrinkWrap: true,
//              physics: NeverScrollableScrollPhysics(),
                itemCount: shorok2.length,
                itemBuilder: (context,i){
                  return Image.asset(shorok2[i]);
                }),
            //girls
            ListView.builder(
                shrinkWrap: true,
//              physics: NeverScrollableScrollPhysics(),
                itemCount: girls.length,
                itemBuilder: (context,i){
                  return Image.asset(girls[i]);
                })
          ],
        ) ,
      ),

    );
  }
}
