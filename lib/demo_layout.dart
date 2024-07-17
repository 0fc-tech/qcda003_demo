
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
          title: Text("DemoLayout"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.food_bank),
            Text("hello world"),
            OutlinedButton.icon(
                icon: Icon(Icons.social_distance),
                onPressed: (){},
                label: Text("Hello Click me")
            ),
            TextButton.icon(
                icon: Icon(Icons.social_distance),
                onPressed: (){},
                label: Text("Hello Click me")
            ),
            FilledButton(
                onPressed: (){},
                child: Text("Hello Click me")
            ),
            ElevatedButton(
                onPressed: (){},
                child: Text("Hello Click me")
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Icon(Icons.add),
              Icon(Icons.remove),
              Icon(Icons.edit),
            ],)
          ],
        ),
      ),
    );
  }
}






