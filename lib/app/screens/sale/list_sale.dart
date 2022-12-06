import 'package:flutter/material.dart';
import 'package:auto_invoice/app/widgets/customcard.dart';

import '../../widgets/card.dart';

class listsale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text('Home/Dashboard')),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Positioned(
                left: 20,
                top: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'hh',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  SalesCard(
                    SI: '0',
                    SalesDate: '0',
                    ReturnDateTime: 'TEST@GMAIL.COM',
                    CustomerName: '98765432',
                    SalesStatus: '',
                    RefrenceNo: 'Pune Kharadi',
                    Total: 'www.demo.com',
                    Paid: 'www.demo.com',
                    PaymentStatus: 'www.demo.com',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  SalesCard(
                    SI: '0',
                    SalesDate: '0',
                    ReturnDateTime: 'TEST@GMAIL.COM',
                    CustomerName: '98765432',
                    SalesStatus: '',
                    RefrenceNo: 'Pune Kharadi',
                    Total: 'www.demo.com',
                    Paid: 'www.demo.com',
                    PaymentStatus: 'www.demo.com',
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    SalesCard(
                      SI: '0',
                      SalesDate: '0',
                      ReturnDateTime: 'TEST@GMAIL.COM',
                      CustomerName: '98765432',
                      SalesStatus: '',
                      RefrenceNo: 'Pune Kharadi',
                      Total: 'www.demo.com',
                      Paid: 'www.demo.com',
                      PaymentStatus: 'www.demo.com',
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    SalesCard(
                      SI: '0',
                      SalesDate: '0',
                      ReturnDateTime: 'TEST@GMAIL.COM',
                      CustomerName: '98765432',
                      SalesStatus: '',
                      RefrenceNo: 'Pune Kharadi',
                      Total: 'www.demo.com',
                      Paid: 'www.demo.com',
                      PaymentStatus: 'www.demo.com',
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    SalesCard(
                      SI: '0',
                      SalesDate: '0',
                      ReturnDateTime: 'TEST@GMAIL.COM',
                      CustomerName: '98765432',
                      SalesStatus: '',
                      RefrenceNo: 'Pune Kharadi',
                      Total: 'www.demo.com',
                      Paid: 'www.demo.com',
                      PaymentStatus: 'www.demo.com',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
