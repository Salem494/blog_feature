import 'package:blog_app/constant/const.dart';
import 'package:blog_app/model/book_model.dart';
import 'package:blog_app/screen/PdfsScreen.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


/// Represents Homepage for Navigation
class BookScreen extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<BookScreen> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  List<BookModel> boooks = [
    BookModel(title: 'التأمل', pdf: 'assets/books/التأمل.pdf'),
    BookModel(title: 'انه يعمل كيف ولماذا', pdf:  'assets/books/انه_يعمل_كيف_ولماذا_(1).pdf'),
    BookModel(title: 'قراءات المجموعةا', pdf:  'assets/books/اقراءات-المجموعة (1).pdf'),
    BookModel(title: 'قكتاب تخلص من الحجر', pdf:  'assets/books/كتاب تخلص من الحجر.pdf'),
    BookModel(title: 'كتاب لغة التسامح', pdf:   'assets/books/كتاب لغة التسامح.pdf'),
    BookModel(title: 'مرشد عمل الخطوات', pdf:   'assets/books/مرشد_عمل_الخطوات_(1)-1.pdf'),
    BookModel(title: 'النص الاساسي الازرق', pdf:    'assets/books/��النص الاساسي الازرق�.pdf'),
  ];

//  Map<String,dynamic> collection = {
//    'pdfs': <String> [
//      'assets/books/التأمل.pdf',
//      'assets/books/انه_يعمل_كيف_ولماذا_(1).pdf',
//      'assets/books/اقراءات-المجموعة (1).pdf',
//      'assets/books/كتاب تخلص من الحجر.pdf',
//      'assets/books/كتاب لغة التسامح.pdf',
//      'assets/books/مرشد_عمل_الخطوات_(1)-1.pdf',
//      'assets/books/��النص الاساسي الازرق�.pdf',
//    ],
//    'title': <String>[
//      'التأمل',
//      'انه يعمل كيف ولماذا',
//      'قراءات المجموعة',
//      'كتاب تخلص من الحجر',
//      'كتاب لغة التسامح',
//      'مرشد عمل الخطوات',
//      'النص الاساسي الازرق',
//    ],
//
//
//  } as Map<String,dynamic>;






// List<String> book = [
//   'التأمل',
//   'انه يعمل كيف ولماذا',
//   'قراءات المجموعة',
//   'كتاب تخلص من الحجر',
//   'كتاب لغة التسامح',
//   'مرشد عمل الخطوات',
//   'النص الاساسي الازرق',
//
//  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back),color: Colors.white),
        centerTitle: true,
        backgroundColor: myColor.mainColor,
        title: const Text(' NA كتب '),
      ),
      body: ListView.builder(
        itemCount: 7,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder:(context,index){
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>PdfsScreen(
                  bookModel: boooks[index])));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Center(
                  child: Text(boooks[index].title,style: TextStyle(
                    color:  myColor.KLightColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                 height: 50,
                width: 20,
                decoration: BoxDecoration(
                  color: myColor.mainColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          );
          } ),
    );
  }
}