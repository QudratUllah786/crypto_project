import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TradeCurrency extends StatelessWidget {
  final currancy;
  final currName;
  final String coins;
  final  graph;
  final String balnce;
  final rating;
  final String ratingLength;
  final color;
  final padd;
  final padd_sec;

  const TradeCurrency({
    Key? key,
    required this.currancy,
    required this.currName,
    required this.coins,
    required this.graph,
    required this.balnce,
    required this.rating,
    required this.ratingLength,
    required this.color,
    required this.padd,
    required this.padd_sec,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: 51.h,
      decoration: BoxDecoration(
          color: Color.fromRGBO(217, 217, 217, 1),
          borderRadius: BorderRadius.circular(4)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 25,
            height: 25,
            child:
            Image(image: currancy),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: padd,
                child: Text(
                  currName,
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: padd_sec,
                child: Text(
                  coins,
                  style: TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          Image(image: graph),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                balnce,
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  Image(
                      image: rating),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    ratingLength,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: color),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
