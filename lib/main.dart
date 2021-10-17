import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: NewApp(),
    );
  }
}
class NewApp extends StatefulWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  _NewAppState createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text('Demo App'),
      ),
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,

              child: Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 24.0,
        ),
            ),

            Image.network(
              'https://images.pexels.com/photos/9701538/pexels-photo-9701538.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
              height: 400,
            ),

            Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hello! its me.       ",style: TextStyle(fontWeight: FontWeight.bold),),
                Text("Hello from the other side!"),
              ],
            ),
            FlatButton(
              onPressed: (){},
              child: Text("Hello"),
              color: Colors.lime[400],
            ),
            // ElevatedButton(
            //   onPressed: null,
            //   child: const Text('Hello'),
            // ),
          ],
        ),
      ),
    );
  }
}
