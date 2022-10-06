import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Movers extends StatelessWidget {
  const Movers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 300.w,
      // height: 90.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color.fromRGBO(38, 89, 85, 1)
      ),
        child: Column(
        children: [
        Container(
          // margin: EdgeInsets.only(top: 0.4),
          child: Row(
            children: [
              Image(image: AssetImage('asstes/images/bit.png')),
              SizedBox(width: 5,),
              Text('HT',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700),),
            ]
          ),
        ),
          SizedBox(
            width: 60,
           height: 18,
           // margin: EdgeInsets.only(bottom: 3),
              child: Image(image: AssetImage("asstes/images/line.png")
          //
          // )
          ),
          ),

           SizedBox(height: 2,),
            Container(
              width: 77,
              height: 24,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('0.95%',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                    SizedBox(height: 15,width: 15,
                    child:Image(image: AssetImage('asstes/images/Vector1.png')),)
                  ],
                ),
              ),
            )


      ],
    ),
    );
  }
}
