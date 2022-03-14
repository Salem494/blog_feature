import 'package:blog_app/constant/const.dart';
import 'package:blog_app/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfsScreen extends StatefulWidget {
  late BookModel bookModel;
  PdfsScreen({required this.bookModel});

  @override
  _PdfsScreenState createState() => _PdfsScreenState();
}

class _PdfsScreenState extends State<PdfsScreen> {

  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: myColor.mainColor,
        title:  Text(widget.bookModel.title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: myColor.KLightColor,
        ),
        ),
//        actions: <Widget>[
//          IconButton(
//            icon: const Icon(
//              Icons.bookmark,
//              color: Colors.white,
//              semanticLabel: 'Bookmark',
//            ),
//            onPressed: () {
//              _pdfViewerKey.currentState?.openBookmarkView();
//            },
//          ),
//        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(8.0),
              itemBuilder: (context,i){
                return Container(
                  height: 800,
                  child: SfPdfViewer.asset(
                    widget.bookModel.pdf,
//              key: _pdfViewerKey,
                  ),
                );
              }),
        ),
      ),
    );
  }
}
