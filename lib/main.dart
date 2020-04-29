import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tesla'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(child:Column(
            children: <Widget>[Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 200.0, 20.0, 0.0),
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(
                        context,MaterialPageRoute(
                          builder :(context)=> Details()
                      ),
                      );
                    },
                    child:Row(
                      children: <Widget>[
                        IconButton(
                          icon: Image.asset('assets/google_signin.png'),
                        ),
                        Text('Signin with Google'),
                      ],
                    ),
                    color: Colors.blueAccent,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20.0, 270.0, 20.0, 0.0),
                  child: RaisedButton(
                    textColor: Colors.black,
                    onPressed: (){
                      Navigator.push(
                        context,MaterialPageRoute(
                          builder :(context)=> Details()
                      ),
                      );
                    },
                    child:Row(
                      children: <Widget>[
                        IconButton(
                          icon: Image.asset('assets/facebook.png'),
                        ),
                        Text('Sign in with Facebook'),
                      ],
                    ),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            ],
          ),
        ),)
      )
    );
  }
}

class Details extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('User Info'),
        ),
      ),
    );
  }
}

