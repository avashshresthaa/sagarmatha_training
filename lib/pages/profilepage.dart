import 'package:flutter/material.dart';

class ProfilePagee extends StatelessWidget {
  final String myText;

  ProfilePagee({required this.myText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Hellop'),
              );
            }));
  }
}
