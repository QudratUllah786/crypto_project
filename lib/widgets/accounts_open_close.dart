import 'package:flutter/material.dart';
class OpenClose extends StatefulWidget {

  const OpenClose({Key? key}) : super(key: key);

  @override
  State<OpenClose> createState() => _OpenCloseState();
}

class _OpenCloseState extends State<OpenClose>with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 250,
          child: TabBar(
            indicatorColor: Color.fromRGBO(38, 89, 85, 1),

            isScrollable: false,
            controller: tabController,
            labelPadding: EdgeInsets.symmetric(horizontal:10),
            tabs: [
              Tab(child: Text('OPEN',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),),
              Tab(child: Text('PENDING',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),),
              Tab(child: Text('CLOSE',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600),),)
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
              children:[
                Container(),
                Container(),
                Container(),
              ]),
        )
      ],
    );
  }
}

