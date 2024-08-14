import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Styling App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                'Flutter Text Styling',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),

              Text(
                'Experiment with text styles',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 20),

              TextButton(
                onPressed: () {

                  final snackBar = SnackBar(
                    content: Text('You clicked the button!'),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text(
                  'Click Me',
                  style: TextStyle(
                    color: Colors.purple,
                  ),
                ),
              ),
              SizedBox(height: 20),

              RichText(
                text: TextSpan(
                  text: 'Welcome to ',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Flutter!',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
