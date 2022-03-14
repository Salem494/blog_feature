import 'package:blog_app/constant/const.dart';
import 'package:blog_app/constant/url_constant.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 25),
              color: myColor.mainColor,
              child: Center(
                child: Text('لماذا نحن؟',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),),
              ),
              height: 150,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
              child: Text('إن اختيار مركز لعلاج الإدمان وإعادة التأهيل هو واحد\n من أهم القرارات التي تتخذها في حياتك، والتي قد تتطلب تفكيرًا ودراسة متأنية. في بعض الحالات، قد تعتمد حياة الشخص على ذلك! إن اختيار مركز له تاريخ طويل من العلاج، كونه في طليعة مراكز البحث والتدريب، وتوفير أنواع مختلفة من العلاج أمر حيوي لضمان حصوله على العلاج الأكثر شمولية وفعالية سوف تتلقى دائما لدينا الدعم و الرعاية اللاحقة حتى بعد أن تغادر عن طريق برنامج الرعاية اللاحقة • نعمل على دعمك ومساندتك في محنتك الى أن تتعافي نهائياً وتخرج للحياة بقلب مقبل ومشرق فستجدنا معك فى كل خطوة علاجية أنت بحاجة إليها وكل مشورة تحتاج لها ستجدها لدينا دائماً . • البداية الحقيقية لرحلتك تحدث عندما تترك مركزنا، الدافع لدينا هو أن نقدم لك مع أساس سليم أكبر قدر من فرصة النجاح الدائم وزيادة نوعية مواجهات الحياة بظروفها وشروطها . • التواصل معنا في هذه الرحلة يزيد من فاعلية برامجنا ويصقل خبرات الفريق لدينا من أجل رصد مواطن الضعف باستمرار وتحسين نوعية العلاج لدينا . الدعم من الآخرين هو جانب لا يقدر بثمن في التعافي وهدفنا هو تشجيع أكبر قدر من هذا في مراكزنا وبقدر ما نستطيع نحن لا نخاف من تحدى انفسنا',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: myColor.mainColor
                ),
              ),
            ),
            //1
            buildMainText('نكون معك بشكل مستمر'),
            Image.asset('assets/100.png'),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
              child: Text('تعمل مراكزنا على مدار 24 ساعة في اليوم، 7 أيام في الأسبوع … إتاحة المعالجين خلال ساعات العمل الطويلة من الساعة 8:00 إلى الساعة 22:00، وإتاحة الموظفين الإضافيين ليلاً، نحن نقدم المساعدة في أي وقت وفي أي مكان ومع أي شخص يحتاج إلى المساعدة',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: myColor.mainColor
                ),
              ),
            ),
            SizedBox(height: 10),


            //2
            buildMainText('الريادة والسمعة الطيبة'),
            Image.asset('assets/300.png'),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
              child: Text(
                'طوال 25 عاماً من الخدمة ونحن نسعى دائما لتقديم خدمات مميزة ومبتكره فى مجال العلاج من الادمان، ومع مرور الوقت ساعد هذه المجهود على بناء السمعة الطيبة داخل وخارج مصر بحمد الله، وذلك نتيجة نجحاتنا المشهود لها والتي حققتها المستشفي في علاج الإدمان لعدد متزايد من المرضي في الوطن العربي . وفي خلال هذه الأعوام قدمنا المساعدة لما يزيد عن خمسة عشره ألف مريض إدمان، ونحن نواصل التطوير وتحسين العلاجات لدينا لدمج الإحتياجات الحديثة، يقوم المعالجين لدينا بحضور الندوات والتدريبات بشكل منتظم من أجل توسيع معارفهم وخبراتهم ودراساتهم للتعامل مع كافة انوع الادمان المختلفة',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: myColor.mainColor
                ),
              ),
            ),
            SizedBox(height: 10),


            //3
            buildMainText('سوف تشعر أنك في المنزل'),
            Image.asset('assets/400.png'),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
              child: Text(
                'حتى يعلم كل مريض أن مستشفى فيوتشر توفر له أفضل العلاجات سيجد العناية والاهتمام اللازمين، وهذا ما يميز مستشفى فيوتشر للطب النفسى و علاج الادمان فى مصر لأنها تستخدم وتستقبل عددًا محدداً من المدمنين حتى توفر لهم الخدمات التي يحتاجونها، كي يحصلون على الدعم الكامل والاهتمام الذي يريدونه . نزودك بجو من الحرية والهدوء يجعلك تشعر بأنك في بيتك، بالإضافة إلى ذلك، سيتم أخذ جميع احتياجاتك من الرعاية والاهتمام والخدمة حتى تتمكن من التركيز على الشفاء .',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: myColor.mainColor
                ),
              ),
            ),
            SizedBox(height: 10),

            //4
            buildMainText('تجربة الطهي للطعام الطازج'),
            Image.asset('assets/500.png'),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 10),
              child: Text(
                'يعتبر عامل التغذية والطعام عاملاً مهمًا جدًا في حدوث تعافى صحي من الإدمان، وفى مستشفي أبو رجيله ستشعر بالفارق عند تناول الوجبات الطازجة التي اعدها أكبر الطهاة وراعوا فيها الاتزان الصحي واذواق النزلاء بالإضافة الى برنامج غذائي مخصص ومتغير يوضع للأشخاص ويراعى فيه الافضليات الشخصية. ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: myColor.mainColor
                ),
              ),
            ),
            SizedBox(height: 10),

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
  Widget buildMainText(String text){
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Align(
        alignment: Alignment.topRight,
        child: Text(text,textAlign: TextAlign.center,style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18
        )),
      ),
    );
  }
}
