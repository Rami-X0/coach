import 'package:coach/core/theming/colors.dart';
import 'package:coach/features/trainer_home/ui/trainer_chat_screen.dart';
import 'package:coach/features/trainer_home/ui/trainer_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrainerNavigationBar extends StatefulWidget {
  const TrainerNavigationBar({super.key});

  @override
  State<TrainerNavigationBar> createState() => _TrainerNavigationBarState();
}

int selectedIndex = 0;

class _TrainerNavigationBarState extends State<TrainerNavigationBar> {
  static List<Widget> screens = <Widget>[
    const TrainerHomeScreen(),
    const TrainerChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: navigationBar(),
      body: screens[selectedIndex],
    );
  }

  Widget navigationBar() {
    return BottomNavigationBar(
      selectedLabelStyle: const TextStyle(color: Colors.black),
      selectedItemColor: ColorsManager.mainColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedItemColor: ColorsManager.lightGray,
      currentIndex: selectedIndex,
      backgroundColor: Colors.white,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
            icon: FaIcon(Icons.next_plan_sharp), label: 'plans'),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.solidMessage),
            label: 'chats',
            backgroundColor: Colors.white),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
