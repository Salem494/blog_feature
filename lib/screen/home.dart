import 'package:blog_app/constant/const.dart';
import 'package:blog_app/constant/url_constant.dart';
import 'package:blog_app/model/admans_model.dart';
import 'package:blog_app/screen/admaan.dart';
import 'package:blog_app/screen/books.dart';
import 'package:blog_app/screen/branchPhotos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: myColor.mainColor,
              width: double.infinity,
              height: 150,
              child: Center(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('مستشفى فيوتشر للطب النفسى \nوعلاج الإدمان',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: myColor.KLightColor
                      ),),
                    SizedBox(width: 20,),
                    Image.asset('assets/down.png',height: 50,width: 50,),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15,left: 15,top: 30),
              child: Text('نحن مستشفى فيوتشر للطب النفسى و علاج الادمان فى مصر نُعد أحدث مراكز علاج الإدمان في مصر، وهي نهجًا فريدًا ومبتكرًا في عالم الطب النفسي، ومعالجة الإدمان، وهي تابعة لمؤسسة مستشفى فيوتشر للطب النفسى و علاج الادمان فى مصرالدولية والتى تعمل في مجال علاج الادمان منذ تأسيسها عام 2000',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: myColor.mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 50,
              color: myColor.KSecondColor,
              child: Center(
                child: Text('مراحل العلاج داخل مستشفى فيوتشر',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: myColor.KLightColor,
                      fontWeight: FontWeight.bold
                  ),),
              ),
            ),
            SizedBox(height: 8,),
            buildText('المرحلة الاولى التقييم والتشخيص','تقييم الحالة الجسدية والنفسية والاجتماعية للمريض ، باستخدام طرق تقييم عالمية وواضحة ومحددة ، وكذلك تقييم درجة الإدمان لمختلف فئات الأدوية ، وتحديد برنامج الرعاية المطلوبة بما يتناسب مع احتياجات كل فرد. إجراء فحوصات طبية كاملة لمعرفة آثار أضرار المخدرات على الجسم والحالة الجسدية بشكل كامل.'),
            Divider(),
            buildText('المرحلة الثانية طرد السموم','تتم هذه المرحلة في مركز أعراض الانسحاب ، حيث نستخدم بروتوكولات منظمة لمراقبة وإدارة إزالة السموم المتعلقة بإدمان المخدرات بأحدث الأساليب والأدوية الحديثة ، مما يساعد على اجتياز هذه المرحلة بأقل درجة من المعاناة والألم للمريض ، مع دعم المريض خلال هذه العملية. نحن نعتمد على برنامجين للتخلص من السموم ، أحدهما بدون ألم ، والآخر يسمى إزالة السموم السريعة.'),
            Divider(),
            buildText('المرحلة الثالثة اعادة التاهيل', 'تتضمن هذه المرحلة برامج وخيارات لعلاج الإدمان ، بما يتناسب مع احتياجات وظروف العميل ، ومنها برامج الإقامة الكاملة ، وبرنامج شنصف الإقامة ، و ال 28 يومًا ، وعيادات الإدمان ومراكز المتابعة الخارجية ، ومركزًا خاصًا للإدمان. ومركزًا خاصًا التشخيص المزدوج.'),
            Divider(),
            buildText('المرحلة الرابعة المتابعة الخارجية', 'تهدف هذه المرحلة إلى إجراء متابعة مستمرة خارج مستشفيات علاج الإدمان مع من أنهى برنامج علاج الإدمان ، وذلك لتقديم الدعم الذاتي والدعم المستمر ، وكذلك لمساعدتهم على العودة إلى الحياة بشكل طبيعي ، وفي كثير من الأحيان للمساعدة يجدون عملاً مناسبًا ، أو يكملون العملية التعليمية.')
            ,SizedBox(height: 10,),
            SizedBox(height: 20,),
            Text('أخطر أنواع الإدمان',style: TextStyle(
                fontSize: 25,
                color: myColor.mainColor
            ),),
            buildBlocType(context),
            SizedBox(height: 15,),
            Text('كيفية العلاج من الإدمان؟',style: TextStyle(
                fontSize: 25,
                color: myColor.mainColor
            ),),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AdmanScreen()));
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: myColor.KLightColor
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back_ios,size: 15,color: Colors.black,),
                    SizedBox(width: 10,),
                    Text('معرفة المزيد',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BranchPhotos()));
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: myColor.KLightColor
                ),
                child:  Center(
                  child: Text('معرض صور فروعنا',
                    textAlign:TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text('NA كتب',style: TextStyle(
                fontSize: 25,
                color: myColor.mainColor
            ),),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BookScreen()));
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: myColor.KLightColor
                ),
                child:  Center(
                  child: Text('أضغط هنا',
                    textAlign:TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                ),
              ),
            ),
            SizedBox(height: 20,),

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
  Widget buildText(String bText,text){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Align(
            alignment: AlignmentDirectional.topEnd,
            child: Text(bText,style: TextStyle(
              color: myColor.mainColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),),
          ),
        ),
        ReadMoreText(
          text,
          trimLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),
          colorClickableText: myColor.mainColor,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'قرأة المزيد',
          trimExpandedText: 'مشاهدة أقل',
          moreStyle: TextStyle(fontSize: 16,color:myColor.mainColor , fontWeight: FontWeight.bold),
        )
      ],
    );
  }


  Widget buildBlocType(context){

    launchURL(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    final List<AdmanModel> text = [
      AdmanModel(text: 'ادمان الاستروكس',link: 'https://thefutureeg.com/%d9%85%d8%ae%d8%af%d8%b1-%d8%a7%d9%84%d8%a7%d8%b3%d8%aa%d8%b1%d9%88%d9%83%d8%b3/'),
      AdmanModel(text: 'ادمان ليرولين',link: ''),
      AdmanModel(text: 'ادمان الشابو',link: 'https://thefutureeg.com/symptoms-of-drug-addiction/'),
      AdmanModel(text: 'ادمان الترامادول',link: 'https://thefutureeg.com/what-is-tramadol-addiction/'),
      AdmanModel(text:  'ادمان الحشيش',link: 'https://thefutureeg.com/%d8%b9%d9%84%d8%a7%d8%ac-%d8%a7%d9%84%d8%a5%d8%af%d9%85%d8%a7%d9%86-%d9%85%d9%86-%d8%a7%d9%84%d8%ad%d8%b4%d9%8a%d8%b4/'),
      AdmanModel(text: 'ادمان الهيروين',link: 'https://thefutureeg.com/what-is-the-treatment-for-heroin-addiction/'),
      AdmanModel(text: 'ادمان الفودو',link: ''),
      AdmanModel(text: 'ادمان الكوكايين',link: ''),
      AdmanModel(text: 'ادمان ليريكا',link: 'https://thefutureeg.com/how-long-does-lyrica-take-from-the-body/'),
      AdmanModel(text: 'ادمان الخمور',link: ''),
      AdmanModel(text: 'ادمان البودر',link: 'https://thefutureeg.com/what-is-a-shadow-or-a-powder/'),
      AdmanModel(text: 'ادمان الافيون',link: 'https://thefutureeg.com/%d8%b9%d9%84%d8%a7%d8%ac-%d8%a7%d8%af%d9%85%d8%a7%d9%86-%d8%a7%d9%84%d8%a7%d9%81%d9%8a%d9%88%d9%86/'),
      AdmanModel(text: 'ادمان الادوية',link: ''),
      AdmanModel(text: 'ادمان الجنس',link: 'https://thefutureeg.com/%d8%a3%d8%b6%d8%b1%d8%a7%d8%b1-%d8%a7%d9%84%d8%aa%d9%81%d9%83%d9%8a%d8%b1-%d8%a7%d9%84%d9%85%d8%b3%d8%aa%d9%85%d8%b1-%d8%a8%d8%a7%d9%84%d8%ac%d9%86%d8%b3/')
    ];
    return Container(
      color: myColor.mainColor,
      height: MediaQuery.of(context).size.height * 0.5,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(right: 3.0,left: 3.0,top: 5,bottom: 8),
        child: GridView.builder(
            itemCount: text.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5.0,
          crossAxisSpacing: 5.0,
          childAspectRatio: 3/2,
            ),
        itemBuilder: (context,i){
            return InkWell(
              onTap: (){
                launchURL(text[i].link);
              },
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: myColor.KLightColor,
                      width: 0.2
                    ),
                    shape: BoxShape.rectangle,
                    color: myColor.KSecondColor,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(text[i].text,style: TextStyle(
                      color: myColor.KLightColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),),
                  )),
            );
    }),
      ),
    );
  }


}
