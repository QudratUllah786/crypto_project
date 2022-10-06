import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoverNext extends StatelessWidget {
  const MoverNext({Key? key}) : super(key: key);

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
      body: Center(
        child: Column(
          children: [
            Image(image: AssetImage('asstes/images/bit.png')),
            Text('BITCOIN(BTC)',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
            SizedBox(height: 5.h,),
            Text('\$320,531.09',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            SizedBox(height: 15,),
            Image(image: AssetImage('asstes/images/graphblack.png')),
            SizedBox(height: 15.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  width: 103.w,
                  height: 33.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Color.fromRGBO(38, 89, 85, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('asstes/images/hand.png')),
                      SizedBox(width: 10.w,),
                      Text('Buy',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),

                    ],
                  ),
                ),
                  Container(
                    width: 103.w,
                    height: 33.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: Colors.black)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('asstes/images/sell.png')),
                        SizedBox(width: 10.w,),
                        Text('Sell',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),

                      ],
                    ),
                  ),
              ],),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right:260),
              child: Text('Details',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy tex",
                style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
