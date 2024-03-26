import 'package:flutter/material.dart';

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
    Color mainColor = Color.fromRGBO(0, 75, 91, 1);
    return BottomAppBar(
      height: 70,
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      // elevation: 20,
      shape: const AutomaticNotchedShape(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
      ),
      color: Colors.black,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home,
                    size: 40,
                  )),
              const SizedBox(
                width: 30,
              ),
              IconButton(
                  onPressed: () {},
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
