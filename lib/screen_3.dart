// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payments'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.info_outline))],
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Card(
            margin: EdgeInsets.only(left: 15, right: 15),
            elevation: 5,
            shadowColor: Colors.black,
            child: SizedBox(
              height: 180,
              width: 30,
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Transation Limit',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                        'A free limit up to which you will receive \nthe online payments directly in your bank',
                        style: TextStyle(fontSize: 17)),
                    SizedBox(
                      height: 9,
                    ),
                    LinearPercentIndicator(
                      barRadius: Radius.circular(10),
                      percent: 0.3,
                      progressColor: Colors.blue,
                      lineHeight: 8,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '36,668 left out of ₹50,000',
                      style: TextStyle(fontSize: 17, color: Colors.grey),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Increase limit',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          listTileS3(
              leadingText: 'Default Method',
              trilingText: 'Online Payments',
              icon: Icons.chevron_right),
          listTileS3(
              leadingText: 'Payment Profile',
              trilingText: 'Bank Account',
              icon: Icons.chevron_right),
          Divider(
            thickness: 1,
          ),
          listTileS3(
              leadingText: 'Payments Overview',
              trilingText: 'Life Time',
              icon: Icons.keyboard_arrow_down_rounded),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              colorCard(
                  color: Color.fromARGB(255, 221, 134, 5),
                  text: 'AMOUNT ON HOLD',
                  rs: '₹0'),
              colorCard(
                  color: Colors.green, text: 'AMOUNT RECEIVED', rs: '₹13,332'),
            ],
          ),
          ListTile(
              leading: Text(
            'Transations',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              threeBtn(
                  text: 'On hold',
                  txtColor: Colors.black,
                  color: Colors.grey[300]),
              threeBtn(text: 'Payouts (15)', txtColor: Colors.white),
              threeBtn(
                  text: 'Refunds',
                  txtColor: Colors.black,
                  color: Colors.grey[300]),
            ],
          ),
          SizedBox(height: 10),
          transList(
              img:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/h/d/hdmwhsh6504_1_2.jpg',
              order: 'Order #1688068',
              date: 'Jul 12, 02:06 PM',
              amount: '₹ 799'),
          Divider(),
          transList(
              img:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-20-21-004963_1.jpg',
              order: 'Order #1457741',
              date: 'Apr 26, 07:47 AM',
              amount: '₹ 397.4'),
          Divider(),
          transList(
              img:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-19-20-000576_1.jpg',
              order: 'Order #1408896',
              date: 'Apr 11, 10:54 AM',
              amount: '₹ 686.42'),
          Divider(),
          transList(
              img:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-18-19-002268_1_1.jpg',
              order: 'Order #1369633',
              date: 'Apr 02, 11:29 AM',
              amount: '₹ 1123.5'),
          transList(
              img:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/h/d/hdmwhsh6504_1_2.jpg',
              order: 'Order #1688068',
              date: 'Jul 12, 02:06 PM',
              amount: '₹ 799'),
          Divider(),
          transList(
              img:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/h/d/hdmwhsh6504_1_2.jpg',
              order: 'Order #1457741',
              date: 'Apr 26, 07:47 AM',
              amount: '₹ 397.4'),
          Divider(),
          transList(
              img:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-20-21-004963_1.jpg',
              order: 'Order #1408896',
              date: 'Apr 11, 10:54 AM',
              amount: '₹ 686.42'),
          Divider(),
          transList(
              img:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-19-20-000576_1.jpg',
              order: 'Order #1369633',
              date: 'Apr 02, 11:29 AM',
              amount: '₹ 1123.5'),
          transList(
              img:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-18-19-002268_1_1.jpg',
              order: 'Order #1688068',
              date: 'Jul 12, 02:06 PM',
              amount: '₹ 799'),
          Divider(),
          transList(
              img:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/h/d/hdmwhsh6504_1_2.jpg',
              order: 'Order #1457741',
              date: 'Apr 26, 07:47 AM',
              amount: '₹ 397.4'),
          Divider(),
          transList(
              img:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/h/d/hdmwhsh6504_1_2.jpg',
              order: 'Order #1408896',
              date: 'Apr 11, 10:54 AM',
              amount: '₹ 686.42'),
          Divider(),
          transList(
              img:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-20-21-004963_1.jpg',
              order: 'Order #1369633',
              date: 'Apr 02, 11:29 AM',
              amount: '₹ 1123.5'),
          transList(
              img:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-19-20-000576_1.jpg',
              order: 'Order #1688068',
              date: 'Jul 12, 02:06 PM',
              amount: '₹ 799'),
          Divider(),
          transList(
              img:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-18-19-002268_1_1.jpg',
              order: 'Order #1457741',
              date: 'Apr 26, 07:47 AM',
              amount: '₹ 397.4'),
          Divider(),
          transList(
              img:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/h/d/hdmwhsh6504_1_2.jpg',
              order: 'Order #1408896',
              date: 'Apr 11, 10:54 AM',
              amount: '₹ 686.42'),
          Divider(),
          transList(
              img:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/h/d/hdmwhsh6504_1_2.jpg',
              order: 'Order #1369633',
              date: 'Apr 02, 11:29 AM',
              amount: '₹ 1123.5'),
          Divider(),
        ],
      ),
    );
  }

  ListTile transList(
      {required img, required order, required date, required amount}) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            image: DecorationImage(image: NetworkImage(img)),
            borderRadius: BorderRadius.circular(5),
            color: Colors.white),
        height: 55,
        width: 55,
      ),
      title: Text(order),
      subtitle: Text(date),
      trailing: Column(
        children: [
          Text(amount),
          Text('🟢  Successful'),
        ],
      ),
    );
  }

  ElevatedButton threeBtn({required text, required txtColor, color}) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(color: txtColor),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    );
  }

  Card colorCard({required color, required text, required rs}) {
    return Card(
      color: color,
      child: SizedBox(
        height: 100,
        width: 180,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                rs,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }

  ListTile listTileS3({required leadingText, required trilingText, icon}) {
    return ListTile(
        leading: Text(
          leadingText,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              trilingText,
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            IconButton(onPressed: () {}, icon: Icon(icon))
          ],
        ));
  }
}
