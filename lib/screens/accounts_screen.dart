import 'package:cryptoproject/screens/auth/login_screen.dart';
import 'package:cryptoproject/widgets/accounts_open_close.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

import '../widgets/appbar.dart';
import '../widgets/notification_screen.dart';
class Accounts extends StatelessWidget {
  const Accounts({Key? key}) : super(key: key);

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
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
          },
              icon: Icon(Icons.arrow_circle_left,color: Color.fromRGBO(38, 89, 85, 1),))
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ACCOUNTS',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w700),),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
                    },
                      child: Icon(Icons.notifications,color: Colors.yellow[800],size: 30,)),
                ],
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                height: 205,
                width: 350,
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(38, 89, 85, 1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('#92454544',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: Colors.white),),
                        SizedBox(width: 15,),
                       // Icon(Icons.keyboard_arrow_down_outlined,),
                      ],
                    ),
                    Text('Demo Account',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('10,0000,000.00 USD',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w700,color: Colors.white),),
                        Icon(Icons.error_outline,color: Colors.white,)
                      ],
                    ),
                   SizedBox(height: 20,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Container(
                             width: 120,
                             height: 36,
                             alignment: Alignment.center,
                             decoration: BoxDecoration(
                                 color: Color.fromRGBO(217, 217, 217, 1),
                                 borderRadius: BorderRadius.circular(5)
                             ),
                             child: Padding(
                               padding: const EdgeInsets.only(left: 10),
                               child: Row(
                                 children: [
                                   Icon(CupertinoIcons.arrow_down_to_line,size: 27,color: Color.fromRGBO(21, 63, 59, 1),),
                                   Text('Deposit',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                                 ],
                               ),
                             ),
                           ),
                          SizedBox(width: 20,),
                           Container(
                             width: 120,
                             height: 36,
                             decoration: BoxDecoration(
                               color: Color.fromRGBO(38, 89, 85, 1),
                               border: Border.all(
                                 color: Colors.white
                               ),
                               borderRadius: BorderRadius.circular(5)
                             ),
                             child: Padding(
                               padding: const EdgeInsets.only(left: 10),
                               child: Row(
                                 children: [
                                   Icon(CupertinoIcons.arrow_turn_up_right,size: 27,color: Colors.white,),
                                   Text('Withdraw',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white),),
                                 ],
                               ),
                             ),
                           ),

                         ],
                       ),
                       Icon(Icons.more_vert,size: 30,color: Colors.white,),
                     ],
                   )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: OpenClose(),flex: 1,),
              Padding(
                padding: const EdgeInsets.only(bottom: 320),
                child: Icon(CupertinoIcons.arrow_up_arrow_down_circle,size: 30,color: Color.fromRGBO(38, 89, 85, 1),),
              )
        ],
      ),
          )
          ],
        ),
      ),
    );
  }
}
