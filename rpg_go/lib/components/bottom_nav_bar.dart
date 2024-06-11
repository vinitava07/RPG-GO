import 'package:flutter/material.dart';
import 'package:rpg_go/pages/profile.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
  //final int _currentIndex = 0;
  final List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Color mainColor = const Color.fromRGBO(0, 75, 91, 1);
    //Color homeIconColor = _currentIndex == 0 ? Colors.blue : Colors.white;
    //Color profileIconColor = _currentIndex == 1 ? Colors.blue : Colors.white;
    return BottomAppBar(
      height: 70,
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      // elevation: 20,
      color: Colors.black,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                    const newRouteName = "/home_revival";
                    bool isNewRouteSameAsCurrent = false;
                    if (ModalRoute.of(context)?.settings.name == newRouteName) {
                      isNewRouteSameAsCurrent = true;
                    }

                    if (!isNewRouteSameAsCurrent) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home_revival', ((route) {
                        return route.settings.name == newRouteName;
                      }));
                    }
                  },
                  icon: const Icon(
                    Icons.home,
                    size: 30,
                    color: Colors.white,
                    //size: _currentIndex == 0 ? 40 : 30,
                    //color: homeIconColor,
                  )),
              const SizedBox(
                width: 30,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                    const newRouteName = '/profile';
                    bool isNewRouteSameAsCurrent = false;
                    if (ModalRoute.of(context)?.settings.name == newRouteName) {
                      isNewRouteSameAsCurrent = true;
                    }

                    if (!isNewRouteSameAsCurrent) {
                      Navigator.pushNamedAndRemoveUntil(context, '/profile',
                          ((route) {
                        return route.settings.name == newRouteName;
                      }));
                    }
                  },
                  icon: const Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.white,
                    //size: _currentIndex == 1 ? 40 : 30,
                    //color: profileIconColor,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
