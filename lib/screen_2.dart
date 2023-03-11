// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('Manage Store')),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          currentIndex: 3,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt_long_rounded,
              ),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.border_all_outlined,
              ),
              label: 'Products',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.auto_awesome_motion_rounded,
              ),
              label: 'Manage',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Account',
            )
          ]),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              card(
                  iconBgColor: Colors.orange,
                  icon: Icon(
                    Icons.speaker,
                    color: Colors.white,
                  ),
                  text: 'Marketing\nDesigns'),
              card(
                  iconBgColor: Colors.green[200],
                  icon: Icon(
                    Icons.currency_rupee,
                    color: Colors.white,
                  ),
                  text: 'Online\nPayments'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              card(
                  iconBgColor: Colors.orange[200],
                  icon: Icon(
                    Icons.percent_rounded,
                    color: Colors.white,
                  ),
                  text: 'Discount\nCoupons'),
              card(
                  iconBgColor: Colors.blue[300],
                  icon: Icon(
                    Icons.person_outlined,
                    color: Colors.white,
                  ),
                  text: 'My\nCoustomers'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              card(
                  iconBgColor: Colors.blueGrey[300],
                  icon: Icon(
                    Icons.qr_code_scanner_outlined,
                    color: Colors.white,
                  ),
                  text: 'Store QR\nCode'),
              card(
                  iconBgColor: Colors.deepPurple[300],
                  icon: Icon(
                    Icons.request_page_sharp,
                    color: Colors.white,
                  ),
                  text: 'Extra\nCharges'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              card(
                  iconBgColor: Colors.pink[200],
                  icon: Icon(
                    Icons.format_align_left_outlined,
                    color: Colors.white,
                  ),
                  text: 'Order\nForm'),
              SizedBox(
                height: 120,
                width: 170,
              )
            ],
          ),
          SizedBox(
            height: 120,
          )
        ],
      ),
    );
  }

  Card card({required icon, required iconBgColor, required text}) {
    return Card(
        elevation: 3,
        shadowColor: Colors.black,
        color: Colors.white,
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            height: 120,
            width: 170,
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: iconBgColor),
                      child: icon,
                      height: 45,
                      width: 45,
                    ),
                    Text(
                      text,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
