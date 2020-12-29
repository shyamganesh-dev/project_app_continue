import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:project_app_continue/bar.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    bool status = false;
    final heights=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
          Navigator.pop(context);
        },
        ),
        centerTitle: true,
        title: Text("Exercise Timer",style:TextStyle(color: Colors.black,
          fontSize: 20,
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Settings",style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20,
            ),
            ),
          ),
        ],
      ),
      backgroundColor: Bar().back,
      body: Column(
        children: [
          ListView.builder(
            itemCount: Bar().settings.length,
              //scrollDirection: Axis.vertical,
              shrinkWrap: true,
              reverse: false,
              itemBuilder: (ctx,i){
                return Padding(
                    padding: EdgeInsets.only(top: 12,bottom: 12),
                    child: Container(
                        width: heights.width*2,
                        color: Colors.white,
                        child: Column(
                          children: [
                            ListTile(
                                title: Text(Bar().settings[i]),
                                trailing: FlutterSwitch(
                                  width: 50.0,
                                  height: 30.0,
                                  toggleSize: 20.0,
                                  value: status,
                                  borderRadius: 30.0,
                                  padding: 8.0,
                                  //showOnOff: true,
                                  onToggle: (val) {
                                    setState(() {
                                      status = val;
                                    });
                                  },
                                ),
                            ),
                            Text(Bar().settings[i]),
                          ],
                        ),
                      ),
                  );
              }
          ),

          // Container(
          //   width: heights.width*1,
          //   color: Colors.white,
          //   child: ListTile(
          //       title: Text("Do not disturb"),
          //       trailing: FlutterSwitch(
          //         width: 100.0,
          //         height: 55.0,
          //         toggleSize: 45.0,
          //         value: status,
          //         borderRadius: 30.0,
          //         padding: 8.0,
          //         showOnOff: true,
          //         onToggle: (val) {
          //           setState(() {
          //             status = val;
          //           });
          //         },
          //       )
          //   ),
          // ),

        ],
      ),
    );
  }
}
