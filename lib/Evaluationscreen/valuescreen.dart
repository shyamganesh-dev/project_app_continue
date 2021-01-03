import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bar.dart';



class ValueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heights= MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text("Measurement",style: TextStyle(color: Colors.black),),
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_back,color: Colors.black,),
          ),
        ),
        body: Column(
         // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Enter the Value in mm",
                  style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 18,

                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: heights.width*0.95,
                decoration: BoxDecoration(
                 color: Color(0xffF5F5F5),
                 borderRadius: BorderRadius.circular(5),
                ),
                child: TextFormField(
                  keyboardType:  TextInputType.number,

                 // keyboardAppearance: TextInputType.number,
                ),
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: heights.width*0.95,
                height: heights.height*0.05,
                decoration: BoxDecoration(
                  color: Bar().purp,
                  //Color(0xffF5F5F5),
                ),
                child: Center(
                  child: Text("Done",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
