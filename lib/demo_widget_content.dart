
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home:  Scaffold(
        appBar: AppBar(
          title: Text("DemoWidgetContent"),
        ),
        body: Column(children: [
          Text("Hello Kemper",style: TextStyle(color: Colors.green),),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index)=> ListTile(
                leading: Image.network("https://picsum.photos/id/$index/48/48"),
                title:Text("Element numéro $index"
                ),
              ),
            ),
          )
        ],)
      ),
    );
  }
}






