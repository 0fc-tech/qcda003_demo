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
      home:FormulaireConnexion()
    );
  }
}








class FormulaireConnexion extends StatefulWidget {
  const FormulaireConnexion({super.key});

  @override
  State<FormulaireConnexion> createState() => _FormulaireConnexionState();
}

class _FormulaireConnexionState extends State<FormulaireConnexion> {
  final controllerEmail = TextEditingController(text:"");
  bool valueSwitch = false;
  @override
  Widget build(BuildContext context)=> Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: controllerEmail,
              decoration: InputDecoration(label: Text("e-mail")),
            ),
            Switch(value: valueSwitch,
                onChanged: (b){
                  setState(() {
                    valueSwitch = b;
                  });
                }),
            Checkbox(value: valueSwitch,  onChanged: (b){
              setState(() {
                valueSwitch = b!;
              });
            })
          ],
        ),
      ),
    );
}

