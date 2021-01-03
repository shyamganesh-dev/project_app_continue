import "package:flutter/material.dart";
import 'package:project_app_continue/bar.dart';

class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heights=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            PreferredSize(
              preferredSize: Size.fromHeight(heights.height*0.2),
              child: Center(
                child: LayoutBuilder(
                  builder: (ctx,con){
                    return CircleAvatar(
                        backgroundColor: Colors.green,
                        maxRadius: heights.width*0.10,
                        child: Icon(
                          Icons.done,
                          color: Colors.white,
                          size: heights.height*0.08,
                        )
                    );
                  },
                )
              ),
            ),
             Center(
               child: Text("\nEvaluation Submitted \n         Successfully",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
             ),
            Spacer(),
            //SizedBox(height: heights.height*0.7,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Text("System calculating the score: ",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    )),
              ),
            ),
            Text("    15 second",
              style: TextStyle(
                color: Bar().oran,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )
            ),

          ],
        ),
      ),
    );
  }
}
