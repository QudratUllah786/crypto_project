import 'package:flutter/material.dart';
class NewsDetail extends StatelessWidget {
  const NewsDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image(image: AssetImage('asstes/images/dollarbig.png'),),
              ),
              Positioned(
                top: 14,
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                },
                    icon: Icon(Icons.arrow_circle_left,color: Color.fromRGBO(38, 89, 85, 1),)),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Text('Best trading report package april 6,2022',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,),),
          )

        ],
      )
    );
  }
}
