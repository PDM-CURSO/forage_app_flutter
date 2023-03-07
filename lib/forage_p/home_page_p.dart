import 'package:flutter/material.dart';

class HomePageP extends StatelessWidget {
  HomePageP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forage P'),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Text("");
        },
      ),
    );
  }
}
