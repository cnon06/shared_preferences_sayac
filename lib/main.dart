import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Future <void> Sayac() async
  {
    var sp = await SharedPreferences.getInstance();

    int? sayac =  sp.getInt("sayac") ?? 0;
    sayac++;

      print('Sayaç: $sayac');

    sp.setInt("sayac", sayac);


  }

@override
  void initState() {
    // TODO: implement initState
  Sayac();
  super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              TextButton(onPressed: ()
                  {
                    //Sayac();
                  }, child: Text("Arttır"))
          ],
        ),
      ),

    );
  }
}
