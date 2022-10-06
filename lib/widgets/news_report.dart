import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class NewsReport extends StatelessWidget {
  const NewsReport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      child: Container(
        width: 350.w,
        height: 192.h,
        decoration: BoxDecoration(
          color: Color.fromRGBO(38, 89, 85, 1),
          borderRadius: BorderRadius.circular(10),


        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 156.w,
              height: 164.h,
              decoration:   BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child:Image(image: AssetImage('asstes/images/dollar.png')),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Best trading report \npackage",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white),),
                    Text("Lorem Ipsum is simply\ndummy text of the printing \nand typesetting industry.",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400,color: Colors.white),),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: GestureDetector(
                        onTap: (){},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.white)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2,horizontal: 8),
                            child: Text('Read More',style: TextStyle(fontSize: 8,fontWeight: FontWeight.w400,color: Colors.white),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h,),
                    Container(
                      width: 120.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(217, 217, 217, 1),
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Row(
                          children: [
                            Icon(Icons.calendar_month_outlined),
                            SizedBox(width:8.h,),
                            Text('April,6 2022',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),)
                          ],
                        ),
                      ),

                    ),
                    SizedBox(height: 6.h,),
                    Container(
                      width: 120.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(217, 217, 217, 1),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.watch_later_outlined),
                          Text('06:00-08:00 pm',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),)
                        ],
                      ),

                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
