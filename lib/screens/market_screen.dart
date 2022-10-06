
import 'package:cryptoproject/widgets/market_movers.dart';
import 'package:flutter/material.dart';

import '../widgets/mover_next.dart';
import '../widgets/notification_screen.dart';
class Market extends StatelessWidget {
  const Market({Key? key}) : super(key: key);

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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('MARKET',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w700),),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
                    },
                      child: Icon(Icons.notifications,color: Colors.yellow[800],size: 30,)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12,),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 5,horizontal: 24),
                width: 345,
                height: 57,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(38, 89, 85, 1)
                ),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('#92454544',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                            SizedBox(width: 10,),
                            Icon(Icons.keyboard_arrow_down_outlined,color: Colors.white,),
                          ],
                        ),
                        Row(
                          children: [
                            Text('100,000.99 USD',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),)

                          ],
                        )
                      ],
                    ),
                    Text('Demo Accounts',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.white),)
                  ],
                ),
              ),
            ),
            Text('Top Movers',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),),
            SizedBox(height: 15,),
            Expanded(
              child: GridView.builder(
               itemCount:12,
                shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
                  itemBuilder: (BuildContext cnt,index){
                return GestureDetector(child: Movers(),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MoverNext()));
                },);
              }),
            )

          ],
        ),
      ),
    );
  }
}
