import 'package:flutter/material.dart';
import 'package:shoppie/Utils/screenutils.dart';
import 'package:shoppie/screens/home/home_widgets/clippath.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: Utility.screenwidth(context),
              height: 80,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  CustomPaint(
                    size: Size(Utility.screenwidth(context), 80),
                    painter: BNBCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(
                        backgroundColor: const Color.fromRGBO(255, 121, 63, 1),
                        child: const Icon(Icons.shopping_basket),
                        elevation: 0.1,
                        onPressed: () {}),
                  ),
                  SizedBox(
                    width: Utility.screenwidth(context),
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.home,
                            color: currentIndex == 0
                                ? const Color.fromRGBO(255, 121, 63, 1)
                                : Colors.grey.shade400,
                          ),
                          onPressed: () {
                            setBottomBarIndex(0);
                          },
                          splashColor: Colors.white,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: currentIndex == 1
                                  ? const Color.fromRGBO(255, 121, 63, 1)
                                  : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(1);
                            }),
                        Container(
                          width: Utility.screenwidth(context) * 0.20,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.chat,
                              color: currentIndex == 2
                                  ? const Color.fromRGBO(255, 121, 63, 1)
                                  : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(2);
                            }),
                        IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: currentIndex == 3
                                  ? const Color.fromRGBO(255, 121, 63, 1)
                                  : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(3);
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
