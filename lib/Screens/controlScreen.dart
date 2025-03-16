import 'package:flutter/material.dart';

class ControlScreen extends StatefulWidget {
 @override
  _ControlScreenState createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  bool isOn = false; // status lampu

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Control Devices"),),
      body: Padding(padding: EdgeInsets.all(16),child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.lightbulb, size: 100, color: isOn ? Colors.yellow : Colors.grey,),
          SizedBox(height: 20,),
          Text("💡 Smart Lamp",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Text(isOn ? "✅ Status: Menyala" : "❌ Status: Mati",
              style: TextStyle(fontSize: 16, color: isOn ? Colors.green : Colors.red),),
          SizedBox(height: 20,),
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