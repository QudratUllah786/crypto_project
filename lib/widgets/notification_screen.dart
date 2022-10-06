import 'package:flutter/material.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.symmetric(horizontal: 28),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('notifications',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w700),),
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12,),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                width: 345,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(38, 89, 85, 1)
                ),
                child: Column(
                  mainAxisAlignment:  MainAxisAlignment.spaceAround,

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('New Notofication',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                    Text('24 june, 2023',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12,),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                width: 345,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(38, 89, 85, 1)
                ),
                child: Column(
                  mainAxisAlignment:  MainAxisAlignment.spaceAround,

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('New Notofication',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                    Text('24 june, 2023',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12,),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                width: 345,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(38, 89, 85, 1)
                ),
                child: Column(
                  mainAxisAlignment:  MainAxisAlignment.spaceAround,

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('New Notofication',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                    Text('24 june, 2023',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12,),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                width: 345,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(38, 89, 85, 1)
                ),
                child: Column(
                  mainAxisAlignment:  MainAxisAlignment.spaceAround,

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('New Notofication',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                    Text('24 june, 2023',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12,),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                width: 345,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(38, 89, 85, 1)
                ),
                child: Column(
                  mainAxisAlignment:  MainAxisAlignment.spaceAround,

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('New Notofication',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                    Text('24 june, 2023',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12,),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                width: 345,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(38, 89, 85, 1)
                ),
                child: Column(
                  mainAxisAlignment:  MainAxisAlignment.spaceAround,

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('New Notofication',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                    Text('24 june, 2023',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
