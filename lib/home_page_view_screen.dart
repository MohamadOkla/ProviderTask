import 'package:flutter/material.dart';
import 'package:prov/controller_screen.dart';
import 'package:provider/provider.dart';

class HomePageViewScreen extends StatelessWidget {
  // int value = 0;

  @override
  Widget build(BuildContext context) {
    final controler = Provider.of<ControllerProvider>(context);
    return Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '${controler.twiceproduct[index]}\n',
                style: TextStyle(fontSize: 24),
              ),
            );
          },
          itemCount: controler.twiceproduct.length,
        ));
  }
}
