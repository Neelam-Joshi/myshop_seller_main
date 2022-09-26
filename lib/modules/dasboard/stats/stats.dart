import 'package:flutter/material.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Stats extends StatefulWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> {

  int selectoption = 0;
  String? selectedValue;

  List revnueFilter = ['Today', 'Yesterday', 'Last Week', 'Last Month'];

  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const SizedBox(height: 10,),
          Align(
          alignment: Alignment.center,
          child: getText('Stats', 24, kblackColor, FontWeight.w600, poppinsSemiBold)),
          const SizedBox(height: 41,),
          selectoption==1?searchUI():Container(),
          selectoption==1?const SizedBox(height: 17,):Container(),
          customTabBar(),
          selectoption==0?
              Expanded(
                child:selectRevenueDate()
              ): products()

        ],
      )),
    );
  }

  revenueFilter() {}
  selectRevenueDate() {
    return Padding(
      padding: const EdgeInsets.only(left:24,right:24),
      child:SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Align(
                alignment: Alignment.centerRight,
                child:
                Card(
                  child: Container(
                    width: 173,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          icon: selectedValue =="Last Month"?
                          const ImageIcon(
                            AssetImage(
                              'assets/images/arrow_up.png',
                            ),
                            size: 22,
                          ):const ImageIcon(
                            AssetImage(
                              'assets/images/arrow_down.png',
                            ),
                            size: 18,
                          ),
                          hint: getText('Select Date', 16, ksolidredColor, FontWeight.w400,
                              poppinsRegular),
                          style: const TextStyle(
                            color: ksolidredColor,
                          ),
                          value: selectedValue,
                          items: revnueFilter.map((e) {
                            return DropdownMenuItem(
                                value: e,
                                child: getText(
                                    e, 16, ksolidredColor, FontWeight.w500, poppinsMedium));
                          }).toList(),
                          onChanged: (val) {
                            setState(() {
                              selectedValue = val.toString();
                            });
                          }),
                    ),
                  ),
                ),
              ),
              const SizedBox(height:26),
              getText("Total Orders",
                  16, kblackColor, FontWeight.w400, poppinsRegular),
              const SizedBox(height:8),
              getText("30", 22, ksolidredColor, FontWeight.w600, poppinsRegular),
              const Divider(thickness: 0.5,color: Color(0xff000000),),
              getText("Total Revenue",
                  16, kblackColor, FontWeight.w400, poppinsRegular),
              const SizedBox(height:8),
              getText("₹ 17,420", 22, ksolidredColor, FontWeight.w600, poppinsRegular),
              chartsUI(),
              const Divider(thickness: 0.5,color: Color(0xff000000),),
              getText("Total Profit",
                  16, kblackColor, FontWeight.w400, poppinsRegular),
              const SizedBox(height:8),
              getText("₹ 11,420", 22, ksolidredColor, FontWeight.w600, poppinsRegular),
              chartsUI(),
              const Divider(thickness: 0.5,color: Color(0xff000000),),
              getText("Total Expenses",
                  16, kblackColor, FontWeight.w400, poppinsRegular),
              const SizedBox(height:8),
              getText("₹ 6,000", 22, ksolidredColor, FontWeight.w600, poppinsRegular),
              chartsUI(),
              const Divider(thickness: 0.5,color: Color(0xff000000),),

            ]),
      )
    ) ;

  }

  Widget customTabBar() {
    return Container(
      height: 43,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selectoption = 0;
              });
            },
            child: SizedBox(
              height: 43,
              width: 100,
              child: Column(
                children: [
                  getText('Revenue', 18, kblackColor, FontWeight.w600,
                      poppinsMedium),
                  selectoption == 0
                      ? Container(
                          width: 82,
                          child: const Divider(
                            color: ksolidredColor,
                            thickness: 3,
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectoption = 1;
              });
            },
            child: SizedBox(
              width: 100,
              height: 43,
              child: Column(
                children: [
                  getText('Products', 18, kblackColor, FontWeight.w500,
                      poppinsMedium),
                  selectoption == 1
                      ? Container(
                          width: 85,
                          child: const Divider(
                            color: ksolidredColor,
                            thickness: 3,
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget products(){
    return Expanded(
      child: ListView.separated(
            padding:const EdgeInsets.only(left:16,right:16,),
            itemCount: 6,
            separatorBuilder: (BuildContext context,i){
              return SizedBox(height:8);
            },
            itemBuilder: (BuildContext context,index){
              return Container(
                height: 125,
                padding: const EdgeInsets.only(left:8,top:12,),
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    border: Border.all(
                      color: Color(0xffFFFFFF),
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12, blurRadius: 10, offset: Offset(2, 2))
                    ]
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/tatasalt.png",width:101,height:101),
                      const SizedBox(width:11),
                      Padding(
                        padding:const EdgeInsets.only(top:5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              getText("Tata Salt", 14, kblackColor, FontWeight.w400, poppinsRegular),
                              SizedBox(height:9),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                        children: [
                                          getText("Views", 14, kLightTextColor, FontWeight.w500, poppinsMedium),
                                          SizedBox(height:2),
                                          getText("1883", 16, kblackColor, FontWeight.w500, poppinsMedium),
                                        ]),
                                    SizedBox(width:20),
                                    Column(
                                        children: [
                                          getText("Orders", 14, kLightTextColor, FontWeight.w500, poppinsMedium),
                                          SizedBox(height:2),
                                          getText("100000", 16, kblackColor, FontWeight.w500, poppinsMedium),
                                        ]),
                                    SizedBox(width:20),
                                    Column(
                                        children: [
                                          getText("Sales", 14, kLightTextColor, FontWeight.w500, poppinsMedium),
                                          SizedBox(height:2),
                                          getText("₹6592", 16, kblackColor, FontWeight.w500, poppinsMedium),
                                        ]),
                                  ]),
                              SizedBox(height:10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("1 in stock",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: poppinsRegular,
                                        color: kLightTextColor,
                                        decoration: TextDecoration.underline
                                    ),
                                  ),
                                  SizedBox(width:75),
                                  getText("₹65.40", 14, kLightTextColor, FontWeight.w500, poppinsRegular)
                                ],
                              )


                            ]),
                      )
                    ]),
              );
            },
          )
    );

  }
  Widget chartsUI(){
    return Container(
      height:165,
      child: SfCartesianChart(

          primaryXAxis:CategoryAxis(
            isVisible: false,

          ),
           series: <ChartSeries<_SalesData, String>> [
             LineSeries<_SalesData, String>(
                 color: ksolidredColor,
                 dataSource: data,
                 xValueMapper: (_SalesData sales, _) => sales.year,
                 yValueMapper: (_SalesData sales, _) => sales.sales
             )
           ],
      ),
    );
  }

  Widget searchUI() {
    return Padding(
      padding: const EdgeInsets.only(left:16,right:16),
      child: Container(
          height: 40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffBEBEBE), width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: TextFormField(
            style: const TextStyle(
                fontSize: 14,
                color: kblackColor,
                fontWeight: FontWeight.w400,
                fontFamily: 'Poppins'),
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
                isDense: true,
                hintText: 'Search',
                hintStyle: const TextStyle(
                    fontSize: 14,
                    color: kLightTextColor,
                    fontWeight: FontWeight.w400,
                    fontFamily: poppinsRegular),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(top: 7, bottom: 8, left: 12),
                  child: Image.asset(
                    'assets/images/search.png',
                    width: 22.05,
                    height: 23.35,
                    color: kIconColor,
                  ),
                ),
                border: InputBorder.none),
          )),
    );
  }

}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
