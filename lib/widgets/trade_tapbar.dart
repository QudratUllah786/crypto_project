import 'package:cryptoproject/widgets/trade_currency_favourite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TradeTapbar extends StatefulWidget {
  const TradeTapbar({Key? key}) : super(key: key);

  @override
  State<TradeTapbar> createState() => _TradeTapbarState();
}

class _TradeTapbarState extends State<TradeTapbar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 280.w,
          child: TabBar(
            indicatorColor: Color.fromRGBO(38, 89, 85, 1),
            isScrollable: true,
            controller: tabController,
            labelPadding: EdgeInsets.symmetric(horizontal: 10),
            tabs: [
              Tab(
                child: Text(
                  'Favourites',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              Tab(
                child: Text(
                  'Majors',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              Tab(
                child: Text(
                  'Metals',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              Tab(
                child: Text(
                  'Crypto',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              //  color: Color.fromRGBO(217, 217, 217, 1),
              padding: EdgeInsets.only(left: 8, right: 8, bottom: 20, top: 10),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(38, 89, 85, 1),
                  borderRadius: BorderRadius.circular(4)),
              child: TabBarView(controller: tabController, children: [
                ListView(
                  children: [
                    TradeCurrency(
                         padd: EdgeInsets.zero,
                        padd_sec: EdgeInsets.zero,
                        currancy: AssetImage('asstes/images/bit.png'),
                        currName: 'Bitcoin',
                        coins: '2 BTC',
                      graph: AssetImage('asstes/images/line2.png'),
                        balnce:'\$301,100',
                        rating:AssetImage('asstes/images/decrease.png'),
                        ratingLength: '-4,2',
                      color: Color.fromRGBO(191, 14, 14, 1),
                    ),
                    SizedBox(height: 8.h,),
                    TradeCurrency(
                      currancy: AssetImage('asstes/images/ethereum.png'),
                      padd: EdgeInsets.only(right: 8),
                      padd_sec: EdgeInsets.only(right: 16),
                      currName: 'Ethereum',
                      coins: '3 ETH',
                      graph: AssetImage('asstes/images/image 6.png'),
                      balnce:'\$401,100',
                      rating:AssetImage('asstes/images/decrease.png'),
                      ratingLength: '-1.2',
                      color: Color.fromRGBO(191, 14, 14, 1),
                    ),
                    SizedBox(height: 8.h,),
                    TradeCurrency(
                      currancy: AssetImage('asstes/images/solana.png'),
                      padd: EdgeInsets.only(left: 12),
                      padd_sec: EdgeInsets.only(left: 9),
                      currName: 'Solana ',
                      coins: '1 SQL',
                      graph: AssetImage('asstes/images/image 7.png'),
                      balnce:'\$301,100',
                      rating:AssetImage('asstes/images/increase.png'),
                      ratingLength: '+ 2.2',
                      color: Color.fromRGBO(28, 191, 14, 1),
                    ),
                    SizedBox(height: 8.h,),
                    TradeCurrency(
                      padd: EdgeInsets.only(right: 3),
                      padd_sec: EdgeInsets.only(right: 4),
                      currancy: AssetImage('asstes/images/tether.png'),
                      currName: 'Tether',
                      coins: '4 USTD',
                      graph: AssetImage('asstes/images/line2.png'),
                      balnce:'\$301,100',
                      rating:AssetImage('asstes/images/decrease.png'),
                      ratingLength: '-4,2',
                      color: Color.fromRGBO(191, 14, 14, 1),
                    ),
                    SizedBox(height: 8.h,),
                    TradeCurrency(
                      padd: EdgeInsets.only(left: 15),
                      padd_sec: EdgeInsets.only(left: 7),
                      currancy: AssetImage('asstes/images/dollar-symbol.png'),
                      currName: 'USD Coin',
                      coins: '1 USDC',
                      graph: AssetImage('asstes/images/image 8.png'),
                      balnce:'\$301,100',
                      rating:AssetImage('asstes/images/increase.png'),
                      ratingLength: '+2.2',
                      color: Color.fromRGBO(28, 191, 14, 1),
                    ),

                  ],
                ),
                Container(),
                Container(),
                Container(),
                // ListView(
                //   children: [
                //     TradeCurrency(
                //       currancy: AssetImage('asstes/images/bit.png'),
                //       currName: 'Bitcoin',
                //       coins: '2 BTC',
                //       graph: AssetImage('asstes/images/line2.png'),
                //       balnce:'\$301,100',
                //       rating:AssetImage('asstes/images/decrease.png'),
                //       ratingLength: '-4,2',
                //       color: Color.fromRGBO(191, 14, 14, 1),
                //
                //     ),
                //     SizedBox(height: 8.h,),
                //     TradeCurrency(
                //       currancy: AssetImage('asstes/images/ethereum.png'),
                //       currName: 'Ethereum',
                //       coins: '3 ETH',
                //       graph: AssetImage('asstes/images/image 6.png'),
                //       balnce:'\$401,100',
                //       rating:AssetImage('asstes/images/decrease.png'),
                //       ratingLength: '-1,2',
                //       color: Color.fromRGBO(191, 14, 14, 1),
                //
                //     ),
                //     SizedBox(height: 8.h,),
                //     TradeCurrency(
                //       currancy: AssetImage('asstes/images/solana.png'),
                //       currName: 'Solana ',
                //       coins: '1  SQL',
                //       graph: AssetImage('asstes/images/image 7.png'),
                //       balnce:'\$301,100',
                //       rating:AssetImage('asstes/images/increase.png'),
                //       ratingLength: '+ 2.2',
                //       color: Color.fromRGBO(191, 14, 14, 1),
                //
                //     ),
                //     SizedBox(height: 8.h,),
                //     TradeCurrency(
                //       currancy: AssetImage('asstes/images/tether.png'),
                //       currName: 'Tether',
                //       coins: '4 USTD',
                //       graph: AssetImage('asstes/images/line2.png'),
                //       balnce:'\$301,100',
                //       rating:AssetImage('asstes/images/decrease.png'),
                //       ratingLength: '-4,2',
                //       color: Color.fromRGBO(191, 14, 14, 1),
                //
                //     ),
                //     SizedBox(height: 8.h,),
                //     TradeCurrency(
                //       currancy: AssetImage('asstes/images/dollar-symbol.png'),
                //       currName: 'USD Coin',
                //       coins: '1 USDC',
                //       graph: AssetImage('asstes/images/image 8.png'),
                //       balnce:'\$301,100',
                //       rating:AssetImage('asstes/images/increase.png'),
                //       ratingLength: '+2.2',
                //       color: Color.fromRGBO(191, 14, 14, 1),
                //
                //     ),
                //
                //   ],
                // ),
                // ListView(
                //   children: [
                //     TradeCurrency(
                //       currancy: AssetImage('asstes/images/bit.png'),
                //       currName: 'Bitcoin',
                //       coins: '2 BTC',
                //       graph: AssetImage('asstes/images/line2.png'),
                //       balnce:'\$301,100',
                //       rating:AssetImage('asstes/images/decrease.png'),
                //       ratingLength: '-4,2',
                //       color: Color.fromRGBO(191, 14, 14, 1),
                //
                //     ),
                //     SizedBox(height: 8.h,),
                //     TradeCurrency(
                //       currancy: AssetImage('asstes/images/ethereum.png'),
                //       currName: 'Ethereum',
                //       coins: '3 ETH',
                //       graph: AssetImage('asstes/images/image 6.png'),
                //       balnce:'\$401,100',
                //       rating:AssetImage('asstes/images/decrease.png'),
                //       ratingLength: '-1,2',
                //       color: Color.fromRGBO(191, 14, 14, 1),
                //
                //     ),
                //     SizedBox(height: 8.h,),
                //     TradeCurrency(
                //       currancy: AssetImage('asstes/images/solana.png'),
                //       currName: 'Solana ',
                //       coins: '1  SQL',
                //       graph: AssetImage('asstes/images/image 7.png'),
                //       balnce:'\$301,100',
                //       rating:AssetImage('asstes/images/increase.png'),
                //       ratingLength: '+ 2.2',
                //       color: Color.fromRGBO(191, 14, 14, 1),
                //
                //     ),
                //     SizedBox(height: 8.h,),
                //     TradeCurrency(
                //       currancy: AssetImage('asstes/images/tether.png'),
                //       currName: 'Tether',
                //       coins: '4 USTD',
                //       graph: AssetImage('asstes/images/line2.png'),
                //       balnce:'\$301,100',
                //       rating:AssetImage('asstes/images/decrease.png'),
                //       ratingLength: '-4,2',
                //       color: Color.fromRGBO(191, 14, 14, 1),
                //
                //     ),
                //     SizedBox(height: 8.h,),
                //     TradeCurrency(
                //       currancy: AssetImage('asstes/images/dollar-symbol.png'),
                //       currName: 'USD Coin',
                //       coins: '1 USDC',
                //       graph: AssetImage('asstes/images/image 8.png'),
                //       balnce:'\$301,100',
                //       rating:AssetImage('asstes/images/increase.png'),
                //       ratingLength: '+2.2',
                //       color: Color.fromRGBO(191, 14, 14, 1),
                //
                //     ),
                //
                //   ],
                // ),
                // ListView(
                //   children: [
                //     TradeCurrency(
                //       currancy: AssetImage('asstes/images/bit.png'),
                //       currName: 'Bitcoin',
                //       coins: '2 BTC',
                //       graph: AssetImage('asstes/images/line2.png'),
                //       balnce:'\$301,100',
                //       rating:AssetImage('asstes/images/decrease.png'),
                //       ratingLength: '-4,2',
                //       color: Color.fromRGBO(191, 14, 14, 1),
                //
                //     ),
                //     SizedBox(height: 8.h,),
                //     TradeCurrency(
                //       currancy: AssetImage('asstes/images/ethereum.png'),
                //       currName: 'Ethereum',
                //       coins: '3 ETH',
                //       graph: AssetImage('asstes/images/image 6.png'),
                //       balnce:'\$401,100',
                //       rating:AssetImage('asstes/images/decrease.png'),
                //       ratingLength: '-1,2',
                //       color: Color.fromRGBO(191, 14, 14, 1),
                //
                //     ),
                //     SizedBox(height: 8.h,),
                //     TradeCurrency(
                //       currancy: AssetImage('asstes/images/solana.png'),
                //       currName: 'Solana ',
                //       coins: '1  SQL',
                //       graph: AssetImage('asstes/images/image 7.png'),
                //       balnce:'\$301,100',
                //       rating:AssetImage('asstes/images/increase.png'),
                //       ratingLength: '+ 2.2',
                //       color: Color.fromRGBO(191, 14, 14, 1),
                //
                //     ),
                //     SizedBox(height: 8.h,),
                //     TradeCurrency(
                //       currancy: AssetImage('asstes/images/tether.png'),
                //       currName: 'Tether',
                //       coins: '4 USTD',
                //       graph: AssetImage('asstes/images/line2.png'),
                //       balnce:'\$301,100',
                //       rating:AssetImage('asstes/images/decrease.png'),
                //       ratingLength: '-4,2',
                //       color: Color.fromRGBO(191, 14, 14, 1),
                //
                //     ),
                //     SizedBox(height: 8.h,),
                //     TradeCurrency(
                //       currancy: AssetImage('asstes/images/dollar-symbol.png'),
                //       currName: 'USD Coin',
                //       coins: '1 USDC',
                //       graph: AssetImage('asstes/images/image 8.png'),
                //       balnce:'\$301,100',
                //       rating:AssetImage('asstes/images/increase.png'),
                //       ratingLength: '+2.2',
                //       color: Color.fromRGBO(191, 14, 14, 1),
                //
                //     ),
                //
                //   ],
                // ),
              ]),
            ),
          ),
        )
      ],
    );
  }
}
