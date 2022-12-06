import 'package:flutter/material.dart';

import '../../widgets/card.dart';

class ShareHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: (const Text('List of ShareHolder')),
      ),
      body: ListView(
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
    );
  }
}
