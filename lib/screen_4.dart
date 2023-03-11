// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ui_design_screens/widgets/you_tub_widgets.dart';

class ScreenFour extends StatefulWidget {
  ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dukaan Premium'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.blue,
                  height: 150,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 5,
                    shadowColor: Colors.black,
                    color: Colors.white,
                    child: SizedBox(
                      height: 220,
                      width: 350,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Image.asset('assests/logo.png'),
                            height: 90,
                            width: 200,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Get Dukaan Premium for just \n₹4,999/year',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              'All the advanced features for scaling your business.',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 16)),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Features',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  listScreen4(
                      icon: Icons.web,
                      title: 'Custom domain name',
                      subtitle:
                          'Get your own custom domain and build \nyour brand on the internet.'),
                  listScreen4(
                      icon: Icons.verified_outlined,
                      title: 'Verified seller badge',
                      subtitle:
                          'Get green verified badge under your \nstore name and build trust.'),
                  listScreen4(
                      icon: Icons.laptop_mac_outlined,
                      title: 'Dukaan for PC',
                      subtitle:
                          'Access all the exclusive premium \nfeatures on Dukaan for PC.'),
                  listScreen4(
                      icon: Icons.headset_mic_outlined,
                      title: 'Priority support',
                      subtitle:
                          'Get your your question resolved with our \npriority customer support.'),
                ],
              ),
            ),
            Divider(
              thickness: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Text(
                'What is Dukaan Premium?',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Youtub(),
            Divider(
              thickness: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 20, bottom: 25),
              child: Text(
                'Frequently asked questions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Faq(
                icon: '',
                text: 'What kind of businesses can use Dukaan Premium?'),
            Divider(
              indent: 25,
              endIndent: 25,
            ),
            Faq(icon: '', text: 'What is your refund policy?'),
            Divider(
              indent: 25,
              endIndent: 25,
            ),
            Faq(
                icon: '',
                text:
                    'Will there be an automatic charge after the paid trial?'),
            Divider(
              indent: 25,
              endIndent: 25,
            ),
            Faq(icon: '', text: 'What payment methode do you offer?'),
            Divider(
              indent: 25,
              endIndent: 25,
            ),
            Faq(icon: '', text: 'What happens when my free trail ends?'),
            Divider(
              indent: 25,
              endIndent: 25,
            ),
            Faq(icon: '', text: 'What are the terms for the custom domain?'),
            Divider(
              indent: 25,
              endIndent: 25,
            ),
            Divider(
              thickness: 5,
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Need help? Get in touch',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                finalContainer(
                    icon: Icons.messenger_outline, text: 'Live Chat'),
                finalContainer(icon: Icons.phone_outlined, text: 'Phone Call')
              ],
            ),
            SizedBox(
              height: 250,
            )
          ],
        ),
      ),
    );
  }

  InkWell finalContainer({required icon, required text}) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 110,
        width: 175,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.grey)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 30,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }

  ListTile listScreen4({required icon, required title, required subtitle}) {
    return ListTile(
      isThreeLine: true,
      onTap: () {},
      leading: Icon(
        icon,
        size: 40,
        color: Colors.blue,
      ),
   
      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 13),
      ),
    );
  }
}

class Faq extends StatefulWidget {
  Faq({super.key, required this.icon, required this.text});
  String icon;
  String text;

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  var changeableIcon = Icons.add;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      trailing: Icon(
        changeableIcon,
        color: Colors.black,
      ),
      onExpansionChanged: (value) {
        setState(() {
          if (value == true) {
            changeableIcon = Icons.minimize;
          } else {
            changeableIcon = Icons.add;
          }
        });
      },
      title: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          widget.text,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 45, right: 25),
          child: Text(
            'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
