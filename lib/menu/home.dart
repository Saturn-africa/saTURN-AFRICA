// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:saturn/findroomates/ROOMSEKER/saturnroomseeker/shortlisted/saturnroomseeker.dart';
import 'drawer.dart';
import 'dummy.dart';

class HomeForm extends StatefulWidget {
  const HomeForm({key}) : super(key: key);

  @override
  _HomeFormState createState() => _HomeFormState();
}

class _HomeFormState extends State<HomeForm>
    with SingleTickerProviderStateMixin {
  // Animation Controller
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }

  _toggleAnimation() {
    _animationController.isDismissed
        ? _animationController.forward()
        : _animationController.reverse();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rightSlide = MediaQuery.of(context).size.width * 0.6;
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        double slide = rightSlide * _animationController.value;
        double scale = 1 - (_animationController.value * 0.3);
        return Stack(
          children: [
            // ignore: prefer_const_constructors
            Scaffold(
              backgroundColor: const Color(0xff22a6b3),
              body: const DrawerData(),
            ),
            Transform(
              transform: Matrix4.identity()
                ..translate(slide)
                ..scale(scale),
              alignment: Alignment.center,
              child: Scaffold(
                backgroundColor: Colors.white,
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(200),
                  child: Container(
                    color: const Color(0xffee5253),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 24, 12, 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () => _toggleAnimation(),
                            icon: AnimatedIcon(
                              icon: AnimatedIcons.menu_close,
                              progress: _animationController,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 24, bottom: 12),
                            child: Text(
                              'Welcome',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ),
                          const Text(
                            'Improve your language skill\nby selecting one of the following languages',
                            style: TextStyle(
                                fontSize: 17, fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                body: const DrawerData(),
              ),
            )
          ],
        );
      },
    );
  }
}
