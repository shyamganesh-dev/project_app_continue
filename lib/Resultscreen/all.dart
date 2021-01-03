import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../bar.dart';



class Tabshyam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size;
    List<Widget> list = [
      Text("Score Card",
        style: TextStyle(fontSize: 18),),
      Text("View Solution",
        style: TextStyle(
            color: Colors.black,
            fontSize: 18,
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('View Results',
          style: TextStyle(
            color: Colors.black,
          ),),
        leading:  IconButton(
          onPressed: (){
            //Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back,color: Colors.black,),
        ),
      ),
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              constraints: BoxConstraints(maxHeight: 250.0),
              height: heights.height*0.08,
              child: Material(
                color: Bar().greys,
                child: TabBar(
                  tabs: list,
                  labelColor: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Icon(Icons.directions_car),
                  All(),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class All extends StatefulWidget {
  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    final heights = MediaQuery.of(context).size;
    Orientation orientation;
    List <String> numberss=["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16"];
    List <String>incorrect=["2","8","11","12","14","16"];
    List <String> correct = ["1","3","4","5","6","7","9","10","13","15"];
    bool checkedValue = false;
    return Column(
      children: [
        SizedBox(height: heights.height*0.08,),
        Container(
          width: heights.width*1,
          margin: EdgeInsets.all(3),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Checkbox(
                value: true,
                activeColor: Bar().purp,
                onChanged: (value){
                  setState(() {
                    checkedValue = value;
                  });
                },
              ),
              Text("All"),
              //2
              Checkbox(value: false,
                activeColor: Bar().purp,
                onChanged: (value){
                  setState(() {
                    checkedValue = value;
                  });
                },
              ),
              Text("Correct"),
              //3
              Checkbox(
                value: false,
                activeColor: Bar().purp,
                onChanged: (value){
                  setState(() {
                    checkedValue = value;
                  });
                },
              ),
              Text("Incorrect"),
              //4
              Checkbox(
                value: false,
                activeColor: Bar().purp,
                onChanged: (value){
                  setState(() {
                    checkedValue = value;
                  });
                },
              ),
              Text("Book"),

            ],
          ),
        ),
        Divider(thickness: 6,height: 5,),
        GridView.builder(
          shrinkWrap: true,
          itemCount:numberss.length ,
          padding: const EdgeInsets.all(17),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 20,
          crossAxisSpacing:40),// ( orientation == Orientation.portrait) ? 2 : 3),
          itemBuilder: (ctx,i){
            return Container(
              //margin: const EdgeInsets.all(5.0),
              //padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  border: (correct < incorrect) ? Border.all(color: Bar().gree) :(Border.all(color: Bar().oran)),
              ),
              child: Center(child: Text(numberss[i],style: TextStyle(fontSize: 18),)),
            );
          },
        ),
      ],
    );
  }
}

