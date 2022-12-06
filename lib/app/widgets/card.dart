import 'package:flutter/material.dart';

class SalesCard extends StatelessWidget {
  const SalesCard({
    Key? key,
    required this.SI,
    required this.SalesDate,
    required this.ReturnDateTime,
    required this.SalesStatus,
    required this.CustomerName,
    required this.RefrenceNo,
    required this.Total,
    required this.Paid,
    required this.PaymentStatus,
  }) : super(key: key);
  final String SI;
  final String SalesDate;
  final String ReturnDateTime;
  final String SalesStatus;
  final String CustomerName;
  final String RefrenceNo;
  final String Total;
  final String Paid;
  final String PaymentStatus;
  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 300,
      child: Card(
        color: Color.fromARGB(255, 241, 242, 245),
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
                      SI,
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(
                      SalesDate,
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(
                      ReturnDateTime,
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(
                      SalesStatus,
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(
                      CustomerName,
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(
                      RefrenceNo,
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(
                      Total,
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(
                      Paid,
                      style: const TextStyle(fontSize: 15),
                    ),
                    Text(
                      PaymentStatus,
                      style: const TextStyle(fontSize: 15),
                    ),
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
