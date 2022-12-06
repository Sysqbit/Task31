import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.price,
    required this.item,
    required this.moreinfo,
  }) : super(key: key);
  final String price;
  final String item;
  final String moreinfo;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      height: 200,
      child: Card(
        color: Color.fromARGB(255, 196, 218, 251),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Column(
                  children: <Widget>[
                    Text(
                      price,
                      style: const TextStyle(fontSize: 25),
                    ),
                    Text(
                      item,
                      style: const TextStyle(fontSize: 25),
                    ),
                    Text(moreinfo)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
