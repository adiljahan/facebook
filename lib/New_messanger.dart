import 'package:facebook/Constant/constan_color.dart';
import 'package:facebook/Constant/constant_image.dart';
import 'package:facebook/main.dart';
import 'package:facebook/messange_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class New_messanger extends StatefulWidget {
  const New_messanger({super.key});

  @override
  State<New_messanger> createState() => _New_messangerState();
}

class _New_messangerState extends State<New_messanger> {
  int count=0;
  bool cont = false;
  TextEditingController feedCondroller=TextEditingController();

  List a=[
  {
  "images": imageconstant.profile,
  "text1": " Rockey",

  "text2": "who are you.",
  "color1" :Colorpage.primarycolor,
  "text3": "1:00AM",
  "page":messande_chat()
},
{
"color1" :Colorpage.fivecolor,
"images": imageconstant.Rocky,
"text1": " kiran r",

"text2": "hello.",
"text3": "8:36 PM",
"page":messande_chat()
},
{
"images": imageconstant.kiaraparmar,
"text1": " aslam",
"color1" :Colorpage.fivecolor,

"text2": "See you soon",
"text3": "12:14PM",
"color" :Colorpage.seventhcolor,
"page":messande_chat()

},
{
"images": imageconstant.chandani,
"text1": "Maisy",
"color1" :Colorpage.fivecolor,

"text2": "ok thanks",
"text3": "sun",
"page":messande_chat()
},
{
"images": imageconstant.DT2,
"text1": " kiran",

"text2": "call me later",
"color1" :Colorpage.fivecolor,
"text3": "fri",
"color" :Colorpage.seventhcolor,
"page":messande_chat()

},
{
"images": imageconstant.kiaraparmar,
"color1" :Colorpage.fivecolor,
"text1": " aslam",

"text2": "See you soon",
"text3": "12:14PM",
"color" :Colorpage.seventhcolor,
"page":messande_chat()
},
{
"images": imageconstant.chandani,
"color1" :Colorpage.fivecolor,
"text1": "Arjun",

"text2": "ok thanks",
"text3": "sun",
"page":messande_chat()
},
{
"images": imageconstant.tejaphoto,
"color1" :Colorpage.fivecolor,
"text1": " kiran",
"color" :Colorpage.seventhcolor,

"text2": "call me later",
"text3": "fri",
"page":messande_chat()
},

];

@override
  Widget build(BuildContext context) {
  return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 1,
            leading:
            InkWell(onTap: () {
              Navigator.pop(context);
            },
                child: Center(child: SvgPicture.asset(imageconstant.shape))),
            title:   Text("New Messages",style: TextStyle(
                fontSize: 18,
                color: Colors.black,

                fontWeight: FontWeight.w500
            ),) ,
            actions: [
              // SizedBox(height: width*0.05,),
              Center(
                child: Stack(
                    children:[
                      InkWell(onTap:() {
                        cont = !cont;
                        setState(() {

                        });
                      } ,
                        child: Container(
                          width: width*0.15,
                          height: width*0.08,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colorpage.primaryColor),
                              borderRadius:BorderRadius.circular(width*0.05)
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: Duration(milliseconds: 200),
                        right: cont ==true?0:width*0.07,
                        left: cont ==true?width*0.07 : 0,
                        child: InkWell(onTap: () {
                          cont=!cont;
                          setState(() {

                          });
                        },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 400),
                            width: width*0.09,
                            height: width*0.08,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colorpage.secandarycolor),
                                borderRadius:BorderRadius.circular(width*0.05)
                            ),
                            child: SvgPicture.asset(imageconstant.Lock,fit: BoxFit.scaleDown,),
                          ),
                        ),
                      )
                    ]),
              ),
              SizedBox(
                width: width*0.02,
              ),

            ],
          ),



          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding:  EdgeInsets.all(width*0.03),
              child: Container(
                height: height*1.2,
                width: width*1,
                child: Column(
                  children: [


                    Container(
                      child: TextFormField(
                        controller: feedCondroller,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.search,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          labelText:"To:   Type a name or group",
                          labelStyle: TextStyle(fontWeight: FontWeight.w400,
                            fontSize: 12,),
                          //suffixIcon: SvgPicture.asset(Imageconstant.gallery,color: ColorConst.secandarycolor,),
                          hintText: "",
                          hintStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),

                          border: UnderlineInputBorder(

                          ),

                        ),
                      ),
                    ),
                    Column(

                      children: [

                        Row(
                          children: [
                            SvgPicture.asset(imageconstant.twopeple,color: Colorpage.primaryColor,width: width*0.05),
                            SizedBox(width: width*0.03,),

                            Text("Create a new group",style: TextStyle(
                                fontSize: 15,
                                color: Colorpage.primaryColor,
                                fontWeight: FontWeight.w500
                            ),)
                          ],
                        ),
                        SizedBox(height: width*0.03,),
                        Row(
                          children: [
                            SvgPicture.asset(imageconstant.videocall,color: Colorpage.primaryColor,),
                            SizedBox(width: width*0.03,),
                            Text("Create a new video call",style: TextStyle(
                                fontSize: 12,
                                color: Colorpage.primaryColor,
                                fontWeight: FontWeight.w500
                            ),)
                          ],
                        ),
                        Divider(color: Colorpage.primaryColor,)
                      ],
                    ),

                    Container(
                      height: width*1.7,
                      width:width*0.96 ,

                      child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return InkWell(onTap: () {
                              Navigator.push(context, MaterialPageRoute
                                (builder: (context) => a[index]["page"],));
                            },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(

                                    child: Row(
                                      children: [
                                        Container(
                                          height: width*0.16,
                                          width: width*0.16,
                                          child: Stack(
                                              children:[

                                                Container(
                                                  height: width*0.15,
                                                  width: width*0.15,
                                                  decoration:BoxDecoration(
                                                      borderRadius: BorderRadius.circular(width*0.03,),
                                                      image: DecorationImage(image: AssetImage(a[index]["images"]),fit: BoxFit.fill)
                                                  ),
                                                  // child:Image.asset(a[index]["images"],fit: BoxFit.fill,) ,
                                                ),
                                                Positioned(
                                                  top: width*0.12,left: width*0.12,
                                                  child: CircleAvatar(
                                                    backgroundColor: a[index]["color1"],
                                                    radius: width*0.018,
                                                    child: CircleAvatar(
                                                      backgroundColor: a[index]["color"],
                                                      radius: width*0.014,
                                                    ),
                                                  ),
                                                )
                                              ]
                                          ),
                                        ),
                                        SizedBox(
                                          width: width*0.015,
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(a[index]["text1"],style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600
                                            ),),



                                          ],
                                        ),

                                      ],
                                    ),
                                  ),



                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              // width: width*0.04,
                              height: width*0.04,
                            );
                          },
                          itemCount: a.length),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ),
      );

}
}
