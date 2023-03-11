import 'package:flutter/material.dart';

import 'package:ui_design_screens/screen_1.dart';
import 'package:ui_design_screens/screen_2.dart';
import 'package:ui_design_screens/screen_3.dart';
import 'package:ui_design_screens/screen_4.dart';
import 'package:ui_design_screens/screen_5.dart';
import 'package:ui_design_screens/screen_6.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const ScreenOne();
                    },
                  ));
                },
                child: const Text('Screen 1')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const ScreenTwo();
                    },
                  ));
                },
                child: const Text('Screen 2')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const ScreenThree();
                    },
                  ));
                },
                child: const Text('Screen 3')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return ScreenFour();
                    },
                  ));
                },
                child: const Text('Screen 4')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const ScreenFive();
                    },
                  ));
                },
                child: const Text('Screen 5')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const ScreenSix();
                    },
                  ));
                },
                child: const Text('Screen 6'))
          ],
        ),
      ),
    );
  }

  szBox() {
    const SizedBox(
      height: 20,
    );
  }
}
