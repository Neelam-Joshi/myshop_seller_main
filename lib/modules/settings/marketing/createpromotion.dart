import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myshop_seller/constant/colorconstant.dart';
import 'package:myshop_seller/modules/settings/marketing/choosebanner.dart';
import 'package:myshop_seller/modules/widgets/appBar.dart';
import 'package:myshop_seller/modules/widgets/buttonclass.dart';
import 'package:myshop_seller/modules/widgets/gettext.dart';

class CreatePromotion extends StatefulWidget {
  const CreatePromotion({Key? key}) : super(key: key);

  @override
  State<CreatePromotion> createState() => _CreatePromotionState();
}

class _CreatePromotionState extends State<CreatePromotion> {


  TextEditingController shopNameController = TextEditingController();
  TextEditingController adDateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController durationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context, "Advertisement", true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:16,right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: getText("Run an Ad", 16, kblackColor, FontWeight.w400, poppinsRegular ),
              ),
              SizedBox(height:25),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context)=>ChooseBanner()
                  ));
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        offset: Offset(0,0),
                        color: Colors.black12
                      )
                    ]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Image.asset("assets/images/plus.png",color: kblackColor,width: 16,height: 17.93,),
                         SizedBox(height: 5,),
                        getText("Choose Advertisement Banner",
                            14, kblackColor, FontWeight.w500, poppinsMedium)
                    ],
                  ),
                ),
              ),
              const SizedBox(height:30),
              getText("Shop Name", 14, kblackColor, FontWeight.w400, poppinsRegular,),
              const SizedBox(height:5),
              _buildTextField("ABC Store",shopNameController,TextInputType.text,"" ,false),
              const SizedBox(height:15),
              getText("Advertisement Date", 14, kblackColor, FontWeight.w400, poppinsRegular),
              const SizedBox(height:5),
              _buildTextField("4 May",adDateController,TextInputType.text,"assets/images/datecalender.png",true),
              const SizedBox(height:15),
              getText("Time", 14, kblackColor, FontWeight.w400, poppinsRegular),
              const SizedBox(height:5),
              _buildTextField("12:30",adDateController,TextInputType.text,"assets/images/time.png",true),
              const SizedBox(height:15),
              getText("Duration", 14, kblackColor, FontWeight.w400, poppinsRegular),
              const SizedBox(height:5),
              _buildTextField("12:30",adDateController,TextInputType.text,"assets/images/duration.png",true),
              const SizedBox(height:30),
              ButtonClass(ksolidredColor, 45, 343, "Post Advertisement", (){}, Colors.white, false)

            ],
          ),
        ),
      )
    );
  }

  Widget _buildTextField(hinttext,TextEditingController _controller,TextInputType keyboardtype, imageURL,suffixicon) {
      return Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(left:16),
        height: 40.04,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
           border: Border.all(
             color: kborderColor,
             width: 1
           )
        ),
        child: TextField(
          keyboardType: keyboardtype,
          controller: _controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hinttext,
            hintStyle: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: poppinsRegular,
              fontSize: 14,
              color: kblackColor,
            ),
            suffixIcon: suffixicon?
                IconButton(
                  onPressed: (){},
                  icon: Image.asset(imageURL,width:20,height: 20.02),
                ):null
          ),
        ),
      );
  }
}
