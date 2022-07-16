import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2196f3),
        centerTitle: true,
        toolbarHeight: 175,
      ),
      body: Container(
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(40.0),
            topRight: const Radius.circular(40.0),
          ),),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 20, 0),
            child: ListView(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.all(0),
                    child: const Text(
                      'Verification Code',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    )),
                Row(
                  children: <Widget>[
                    Text('Sent to',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black,),),
                    TextButton(
                      child: Text('xxxxxxxxxx@aaaa.com', style: TextStyle(fontSize: 20,color: Colors.grey),),
                      onPressed: () {
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
                SizedBox(height: 10,),
                Container(
                    height: 64.0,
                    width: 56.0,
                    child: Card(
                        color: Color.fromRGBO(173, 179, 191, 0.7),
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0)
                        )
                    )
                ),
                SizedBox(height: 15,),
                Column(
                  children: <Widget>[
                    Text("Didn't get code yet",style: TextStyle(fontSize: 15,color: Colors.black,decoration: TextDecoration.underline),),
                    TextButton(
                      child: Text('Resend Code', style: TextStyle(fontSize: 25,color: Colors.black,decoration: TextDecoration.underline,fontWeight: FontWeight.bold),),
                      onPressed: () {
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
                SizedBox(height: 200,),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Continue',style: TextStyle(fontSize: 25,),),
                      onPressed: () {
                      },
                    )
                ),
              ],
            )
        ),),
    );
  }
}