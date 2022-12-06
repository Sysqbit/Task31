import 'package:auto_invoice/app/screens/company%20Details/DirectorDetails.dart';
import 'package:auto_invoice/app/screens/company%20Details/ShareHolder.dart';
import 'package:auto_invoice/app/screens/company%20Details/companydetails.dart';
import 'package:auto_invoice/app/screens/company%20Details/professionaldetails.dart';
import 'package:auto_invoice/app/screens/payment.dart';
import 'package:auto_invoice/app/screens/sale/add_debtors.dart';
import 'package:auto_invoice/app/screens/sale/credit_note.dart';
import 'package:auto_invoice/app/screens/sale/list_sale.dart';
import 'package:auto_invoice/app/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:auto_invoice/app/widgets/customcard.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text('Home/Dashboard')),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 208, 216, 222),
              ),
              child: ListTile(
                  title: Text('Izhar Khan'),
                  subtitle: Text('Izhar@email.com'),
                  leading: Icon(
                    Icons.house,
                    size: 100.0,
                  )),
            ),
            ListTile(
              title: const Text('Dashboard'),
              leading: IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {},
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ExpansionTile(
              title: const Text('sales'),
              leading: IconButton(
                icon: const Icon(Icons.label_rounded),
                onPressed: () {},
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: const Text('Add sales'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('List of sales/services'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => listsale()));
                          },
                        ),
                        ListTile(
                          title: const Text('Credit note(Return)'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Creditnote()));
                          },
                        ),
                        ListTile(
                          title: const Text('Add Debtor(Customer'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ManageCustomer()));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('purchase'),
              leading: IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: const Text('Add purchase'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('List of purchase'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Add Creditors(Supplier'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Debit note(Return'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Items/Services'),
              leading: IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: const Text('Add Item'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Add services'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Add category'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Maanage unit'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Manage Brands'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Stock converter'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Manage Tax Classes'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Bank/Cash'),
              leading: IconButton(
                icon: const Icon(Icons.house),
                onPressed: () {},
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: const Text('Manage bank'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Cash opening'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Manage cash'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Cash to bank'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Bank to bank'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              title: const Text('Payment'),
              leading: IconButton(
                icon: const Icon(Icons.wallet),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Payment()));
                },
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Receipt'),
              leading: IconButton(
                icon: const Icon(Icons.wallet),
                onPressed: () {},
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Category'),
              leading: IconButton(
                icon: const Icon(Icons.wallet),
                onPressed: () {},
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Settings'),
              leading: IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {},
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Onboarding()));
              },
            ),
            ExpansionTile(
              title: const Text('Reports'),
              leading: IconButton(
                icon: const Icon(Icons.bar_chart_outlined),
                onPressed: () {},
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: const Text('sales report'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('purchase report'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('ledger report'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Debitors Report'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Creditors Report'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              title: const Text('Report'),
              leading: IconButton(
                icon: const Icon(Icons.show_chart),
                onPressed: () {},
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ExpansionTile(
              title: const Text('Company Details'),
              leading: IconButton(
                icon: const Icon(Icons.house),
                onPressed: () {},
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: const Text('Company details'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CompanyDetails()));
                          },
                        ),
                        ListTile(
                          title: const Text('Professional Details'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ProfessionalDetails()));
                          },
                        ),
                        ListTile(
                          title: const Text('Director Details'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DirectorDetails()));
                          },
                        ),
                        ListTile(
                          title: const Text('Share Holder'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ShareHolder()));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Wallet'),
              leading: IconButton(
                icon: const Icon(Icons.wallet),
                onPressed: () {},
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: const Text('Summary'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Add money'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('My Transaction'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Return'),
              leading: IconButton(
                icon: const Icon(Icons.house),
                onPressed: () {},
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: const Text('GST Return file'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('TDS Return file'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Income Tax Return file'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('PF/ESI Return'),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              title: const Text('Ask a query'),
              leading: IconButton(
                icon: const Icon(Icons.show_chart_sharp),
                onPressed: () {},
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ExpansionTile(
              title: const Text('Help & Support'),
              leading: IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: const Text('Customer Care'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Tutorials'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Remote Bill Buddies Support'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ListTile(
              title: const Text('FAQ'),
              leading: IconButton(
                icon: const Icon(Icons.store),
                onPressed: () {},
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Our services'),
              leading: IconButton(
                icon: const Icon(Icons.store),
                onPressed: () {},
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Refer & Earn'),
              leading: IconButton(
                icon: const Icon(Icons.card_giftcard),
                onPressed: () {},
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Rate this app'),
              leading: IconButton(
                icon: const Icon(Icons.star),
                onPressed: () {},
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Version 1.2.5'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Logout'),
              leading: IconButton(
                icon: const Icon(Icons.store),
                onPressed: () {},
              ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: const [
              Text(
                'hh',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          GridView(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
            ),
            children: [
              Row(
                children: const <Widget>[
                  CustomCard(
                    price: '#0',
                    item: "Bank Balance",
                    moreinfo: 'moreinfo',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  CustomCard(
                    price: '#0',
                    item: "Cash Blance",
                    moreinfo: 'moreinfo',
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: const <Widget>[
                    CustomCard(
                      price: '#0',
                      item: "Cash Blance",
                      moreinfo: 'moreinfo',
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: const <Widget>[
                    CustomCard(
                      price: '#0',
                      item: "Bank Balance",
                      moreinfo: 'moreinfo',
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: const <Widget>[
                    CustomCard(
                      price: '#0',
                      item: "Total items",
                      moreinfo: 'moreinfo',
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: const <Widget>[
                    CustomCard(
                      price: '#0',
                      item: "Total Stock",
                      moreinfo: 'moreinfo',
                    ),
                  ],
                ),
              ),
              Row(
                children: const <Widget>[
                  CustomCard(
                    price: '#0',
                    item: "Total Customers(Debtors)",
                    moreinfo: 'moreinfo',
                  ),
                ],
              ),
              Row(
                children: const <Widget>[
                  CustomCard(
                    price: '#0',
                    item: "Total Suppliers(Creditors",
                    moreinfo: 'moreinfo',
                  ),
                ],
              ),
              Row(
                children: const <Widget>[
                  CustomCard(
                    price: '#0',
                    item: "Total purchase(0)/ Last Bill No-",
                    moreinfo: 'moreinfo',
                  ),
                ],
              ),
              Row(
                children: const <Widget>[
                  CustomCard(
                    price: '#0',
                    item: "Total sales(0)/ Last Bill No-",
                    moreinfo: 'moreinfo',
                  ),
                ],
              ),
              Row(
                children: const <Widget>[
                  CustomCard(
                    price: '#0',
                    item: "Total suppliers Due Amount",
                    moreinfo: 'moreinfo',
                  ),
                ],
              ),
              Row(
                children: const <Widget>[
                  CustomCard(
                    price: '#0',
                    item: "Total Customers Due Amount",
                    moreinfo: 'moreinfo',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
