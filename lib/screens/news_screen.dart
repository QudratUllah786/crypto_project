import 'package:cryptoproject/widgets/news_report.dart';
import 'package:flutter/material.dart';

import '../widgets/NewsDetail.dart';
import '../widgets/notification_screen.dart';
class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar:AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            elevation: 0,
            //  toolbarHeight: 70,
            title:IconButton(onPressed: (){
              Navigator.pop(context);
            },
                icon: Icon(Icons.arrow_circle_left,color: Color.fromRGBO(38, 89, 85, 1),))
        ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('NEWS',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w700),),
                  GestureDetector( onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
                  },
                      child: Icon(Icons.notifications,color: Colors.yellow[800],size: 30,)),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  GestureDetector(child: NewsReport(),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsDetail()));
                  },),
                  GestureDetector(child: NewsReport(),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsDetail()));
                    },),
                  GestureDetector(child: NewsReport(),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsDetail()));
                    },),
                ],
              ),
            )

          ],
        ),
      )
    );
  }
}
