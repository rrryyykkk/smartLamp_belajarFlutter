import 'package:flutter/material.dart';

class ControlScreen extends StatefulWidget {
  const ControlScreen({super.key});

 @override
  _ControlScreenState createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  bool isOn = false; // status lampu

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Control Devices"),),
      body: Padding(padding: const EdgeInsets.all(16),child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.lightbulb, size: 100, color: isOn ? Colors.yellow : Colors.grey,),
          const SizedBox(height: 20,),
          const Text("💡 Smart Lamp",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Text(isOn ? "✅ Status: Menyala" : "❌ Status: Mati",
              style: TextStyle(fontSize: 16, color: isOn ? Colors.green : Colors.red),),
          const SizedBox(height: 20,),
          Switch(value: isOn, onChanged: (Value) {
            setState(() {
              isOn = Value;
            });
          })
        ],
      )
    )
    );
  }
}