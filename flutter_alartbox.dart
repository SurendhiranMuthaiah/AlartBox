import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlartBox extends StatefulWidget {
  const AlartBox({Key? key}) : super(key: key);

  @override
  State<AlartBox> createState() => _AlartBoxState();
}

class _AlartBoxState extends State<AlartBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Alart Dialog Box',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: (){
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Alart Dialog Box'),
                  content:Text ('You have raised a Alert Dialog Box'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        color: Colors.green,
                        padding: const EdgeInsets.all(14),
                        child: const Text("okay"),

                      ),
                    ),
                  ],
                ),
            );
            },
            child: const Text("Show alert Dialog box"),
          ),
        ),
      ),
    );
  }
}















