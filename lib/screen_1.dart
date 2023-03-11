// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

bool val = true;

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Additional Information')),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  listTileS1(
                      icon: Icons.share_outlined,
                      title: 'Share Dhukaan App',
                      btn: Icons.chevron_right),
                  listTileS1(
                      icon: Icons.chat_bubble_outline,
                      title: 'Change Languge',
                      btn: Icons.chevron_right),
                  ListTile(
                      onTap: () {},
                      leading: Icon(Icons.wechat_rounded),
                      title: Text('WhatsApp Chat Support'),
                      trailing: Switch(
                          value: val,
                          onChanged: (value) {
                            setState(() {
                              if (val == true) {
                                val = false;
                              } else {
                                val = true;
                              }
                            });
                          })),
                  listTileS1(
                    icon: Icons.lock_outlined,
                    title: 'privacy Policy',
                  ),
                  listTileS1(
                    icon: Icons.star_border_rounded,
                    title: 'Rate Us',
                  ),
                  listTileS1(
                    icon: Icons.logout,
                    title: 'Sign Out',
                  ),
                ],
              ),
            ),
            Text('Version', style: TextStyle(color: Colors.grey)),
            Text('2.4.2'),
            SizedBox(
              height: 20,
            )
          ],
        ));
  }

  ListTile listTileS1({required icon, required title, btn}) {
    return ListTile(
      onTap: () {},
      leading: Icon(icon),
      title: Text(title),
      trailing: IconButton(onPressed: () {}, icon: Icon(btn)),
    );
  }
}
