import 'package:flutter/material.dart';

class NewWeatherBody extends StatelessWidget {
  const NewWeatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "No weather here 😢🔍",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}