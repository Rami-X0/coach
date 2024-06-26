import 'package:coach/core/theming/colors.dart';
import 'package:coach/features/trainee_home/ui/trainers_chat_screen.dart';
import 'package:coach/features/trainee_home/ui/trainers_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TraineeNavigationBar extends StatefulWidget {
  const TraineeNavigationBar({super.key});

  @override
  State<TraineeNavigationBar> createState() => _TraineeNavigationBar();
}

int selectedIndex = 0;

class _TraineeNavigationBar extends State<TraineeNavigationBar> {
  static List<Widget> screens = <Widget>[
    const TrainersHomeScreen(),
    const TrainersChatScreen(),
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
            icon: FaIcon(FontAwesomeIcons.dumbbell), label: 'trainers'),
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
