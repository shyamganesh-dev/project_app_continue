import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/painting.dart';
import '../bar.dart';


class Fillednumbers extends StatefulWidget {
  @override
  _FillednumbersState createState() => _FillednumbersState();
}

class _FillednumbersState extends State<Fillednumbers> {
  Color cool=Colors.grey;

  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size;
    CarouselController buttonCarouselController = CarouselController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Bar().back,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.black,),
          ),
          centerTitle: true,
          title: Text("Evaluation ",style: TextStyle(
            color: Colors.black,
          ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Submit",style: TextStyle(
                color: Bar().purp,
                fontSize: 20,
              ),
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: heights.height*0.02,
            ),
            SizedBox(
              width: heights.width*0.6,
              child: Text("    Criteria: Outline form Shape",style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(
              height: heights.height*0.03,
            ),
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: false,
                height: heights.height*0.4,
                enableInfiniteScroll: false,
                viewportFraction: 0.9,
                autoPlayCurve: Curves.fastOutSlowIn,
                aspectRatio: 2.0,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Container(
                  width: heights.width*1,
                  height: heights.height*.5,
                  color: Colors.greenAccent,
                  // child: Image.network("https://images.pexels.com/photos/3881449/pexels-photo-3881449.jpeg"),
                ),
                Container(
                  width: heights.width*1,
                  height: heights.height*.5,
                  color: Colors.yellowAccent,
                  // child: Image.network("https://images.pexels.com/photos/3881449/pexels-photo-3881449.jpeg"),
                ),
                Container(
                  width: heights.width*1,
                  height: heights.height*.5,
                  color: Colors.deepOrange,
                  // child: Image.network("https://images.pexels.com/photos/3881449/pexels-photo-3881449.jpeg"),
                )
              ],
            ),
            SizedBox(
              height: heights.height*0.05,
            ),
            Container(
              width: heights.width*1,
              height: heights.height*0.05,
              color: Colors.black12,
              child: Center(
                child:RichText(
                  text: TextSpan(
                    children:<TextSpan> [
                      TextSpan(
                        text: "Q.1/",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "09",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: heights.height*0.05,
            ),
            Text(Bar().out,style: TextStyle(fontSize:18 ,fontWeight: FontWeight.bold,),),
            SizedBox(
              height: heights.height*0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: heights.width*.35,
                  child: OutlineButton(
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                    ),
                    onPressed: (){
                      setState(() {
                        cool=Bar().purp;
                      });
                    },
                    child: Text("Yes",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),
                Container(
                  width: heights.width*.35,
                  child: OutlineButton(
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                    ),
                    onPressed: (){
                      setState(() {
                        cool=Bar().purp;
                      });
                    },
                    child: Text("No",style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: heights.height*0.07,
            ),
            Divider(thickness: 3,height: 1,),
            SizedBox(
              height: heights.height*0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: heights.width*0.090,
                  height: heights.height*0.05,
                  decoration: BoxDecoration(
                    color: Bar().purp,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: InkWell(
                        onTap: (){},
                        child: Text("1",style: TextStyle(fontSize: 22,color: Colors.white),)),
                  ),
                ),
                Container(
                  width: heights.width*0.090,
                  height: heights.height*0.05,
                  decoration: BoxDecoration(
                    color: Bar().purp,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: InkWell(
                        onTap: (){},
                        child: Text("2",style: TextStyle(fontSize: 22,color: Colors.white),)),
                  ),
                ),
                Container(
                  width: heights.width*0.090,
                  height: heights.height*0.05,
                  decoration: BoxDecoration(
                    color: Bar().purp,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: InkWell(
                        onTap: (){},
                        child: Text("3",style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                        ),
                        )
                    ),
                  ),
                ),
                Container(
                  width: heights.width*0.090,
                  height: heights.height*0.05,
                  decoration: BoxDecoration(
                    color: Bar().purp,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: InkWell(
                        onTap: (){},
                        child: Text("4",style: TextStyle(fontSize: 22,color: Colors.white),)),
                  ),
                ),
                Container(
                  width: heights.width*0.090,
                  height: heights.height*0.05,
                  decoration: BoxDecoration(
                    color: Bar().purp,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: InkWell(
                        onTap: (){},
                        child: Text("5",style: TextStyle(fontSize: 22,color: Colors.white),)),
                  ),
                ),
                Container(
                  width: heights.width*0.090,
                  height: heights.height*0.05,
                  decoration: BoxDecoration(
                    color: Bar().purp,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: InkWell(
                        onTap: (){},
                        child: Text("6",style: TextStyle(fontSize: 22,color: Colors.white),)),
                  ),
                ),
                Container(
                  width: heights.width*0.090,
                  height: heights.height*0.05,
                  decoration: BoxDecoration(
                    color: Bar().purp,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: InkWell(
                        onTap: (){},
                        child: Text("7",style:
                        TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                        ),
                        )
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),

      ),
    );
  }
}
