// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class ScreenSix extends StatefulWidget {
  const ScreenSix({super.key});

  @override
  State<ScreenSix> createState() => _ScreenSixState();
}

bool val = true;

class _ScreenSixState extends State<ScreenSix> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Center(child: Text('        Catalouge')),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          bottom: TabBar(
            tabs: [Tab(text: 'Products'), Tab(text: 'Categories')],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Screen6Card(
                      img:
                          'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/t/s/tsmwhsh6508_1_4.jpg',
                      name: 'Couch Potato | Women...',
                      rs: 799),
                  Screen6Card(
                      img:
                          'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-19-20-000576_1.jpg',
                      name: 'Couch Potato | Men | B..',
                      rs: 799),
                  Screen6Card(
                      img:
                          'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-18-19-002268_1_1.jpg',
                      name: 'Mug | Explore',
                      rs: 399),
                  Screen6Card(
                      img:
                          'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-20-21-004963_1.jpg',
                      name: 'Combo Blasht 1 | Pack...',
                      rs: 699),
                  Screen6Card(
                      img:
                          'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/t/s/tsmwhsh6508_1_4.jpg',
                      name: 'Mug | Orchard',
                      rs: 499),
                  Screen6Card(
                      img:
                          'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-19-20-000576_1.jpg',
                      name: 'Couch Potato | Women...',
                      rs: 799),
                  Screen6Card(
                      img:
                          'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/t/s/tsmwhsh6508_1_4.jpg',
                      name: 'Couch Potato | Men | B..',
                      rs: 799),
                  Screen6Card(
                      img:
                          'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-18-19-002268_1_1.jpg',
                      name: 'Mug | Explore',
                      rs: 399),
                  Screen6Card(
                      img:
                          'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-20-21-004963_1.jpg',
                      name: 'Combo Blasht 1 | Pack...',
                      rs: 699),
                  Screen6Card(
                      img:
                          'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-19-20-000576_1.jpg',
                      name: 'Mug | Orchard',
                      rs: 499),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Screen6Card extends StatefulWidget {
  String name;
  int rs;
  String img;
  Screen6Card(
      {super.key, required this.img, required this.name, required this.rs});

  @override
  State<Screen6Card> createState() => _Screen6CardState();
}

class _Screen6CardState extends State<Screen6Card> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shadowColor: Colors.black,
      child: SizedBox(
        height: 200,
        width: 340,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 5),
                Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                    image: DecorationImage(
                      image: NetworkImage(widget.img),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(widget.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_vert))
                        ],
                      ),
                      Text('1 piece'),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        '₹${widget.rs}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'In stock',
                            style: TextStyle(color: Colors.green),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Switch(
                              value: val,
                              onChanged: (value) {
                                setState(() {
                                  if (val == true) {
                                    val = false;
                                  } else {
                                    val = true;
                                  }
                                });
                              })
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Divider(),
            TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.share_outlined,
                      color: Colors.black,
                    ),
                    Text(
                      '   Share Product',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
