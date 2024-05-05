import 'package:flutter/material.dart';
import 'package:rpg_go/pages/profile.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  final int _currentIndex = 0;
  final List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    Color mainColor = const Color.fromRGBO(0, 75, 91, 1);
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
                    const newRouteName = "/home_revival";
                    bool isNewRouteSameAsCurrent = false;
                    //print(ModalRoute.of(context)?.settings.name);
                    if (ModalRoute.of(context)?.settings.name == newRouteName) {
                      isNewRouteSameAsCurrent = true;
                    }
                    // Navigator.popUntil(context, (route) {
                    //   if (route.settings.name == newRouteName) {
                    //     isNewRouteSameAsCurrent = true;
                    //   }
                    //   return true;
                    // });

                    if (!isNewRouteSameAsCurrent) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home_revival', ((route) {
                        return route.settings.name == newRouteName;
                      }));
                    }
                  },
                  icon: const Icon(
                    Icons.home,
                    size: 40,
                  )),
              const SizedBox(
                width: 30,
              ),
              IconButton(
                  onPressed: () {Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Profile()));},
                  icon: const Icon(
                    Icons.person,
                    size: 40,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
