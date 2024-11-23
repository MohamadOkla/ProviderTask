import 'package:flutter/material.dart';
import 'package:prov/controller_screen.dart';
import 'package:prov/home_page_view_screen.dart';

import 'package:provider/provider.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controler = Provider.of<ControllerProvider>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomePageViewScreen(),
                ));
              },
              icon: Icon(
                Icons.shopping_cart_sharp,
                size: 40,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${controler.product[index]} \n',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, shadows: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 1),
                          blurRadius: 5)
                    ]),
                  ),
                  IconButton(
                      onPressed: () {
                        controler.addToList(controler.product[index]);
                      },
                      icon: Icon(
                        Icons.add,
                        size: 32,
                      ))
                ],
              ),
            );
          },
          itemCount: controler.product.length,
        ));
  }
}
