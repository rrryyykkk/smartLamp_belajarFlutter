import 'package:flutter/material.dart';
import 'controlScreen.dart';

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Informasi Perangkat')),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/smartLamp.png', width: 100)),
              SizedBox(
                height: 20,
              ),
              Text("📌 Perangkat: Smart Lamp",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(
                "✅ Status: Online",
                style: TextStyle(fontSize: 16, color: Colors.green),
              ),
              Text("📌 IP Address: 192.168.1.10",
                  style: TextStyle(fontSize: 16)),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ControlScreen()));
                  },
                  child: Text("Buka control"),
                ),
              )
            ],
          ),
        ));
  }
}
