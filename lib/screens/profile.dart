import 'package:flutter/material.dart';

import '../widgets/notification_screen.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Profile',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w700),),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
                  },
                    child: Icon(Icons.notifications,color: Colors.yellow[800],size: 30,)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical:0,horizontal: 10),
                width: 345,
                height: 57,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(38, 89, 85, 1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('Mr.John',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                      ],
                    ),
                    Row(
                      children: [

                        Icon(Icons.account_balance_wallet_rounded,color: Colors.white,),
                        SizedBox(width: 6,),
                        Text('\$7,205.99',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),)

                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text('General',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notifications',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                  Icon(Icons.navigate_next)

                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('My Account',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                  Icon(Icons.navigate_next)

                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Contact Us',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                  Icon(Icons.navigate_next)

                ],
              ),
            ),
            SizedBox(height: 30,),
            Text('Security',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Change Password',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                  Icon(Icons.navigate_next)

                ],
              ),
            ),
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Privacy Policy',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                      Icon(Icons.navigate_next)

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text('Choose what data you share with us',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}
