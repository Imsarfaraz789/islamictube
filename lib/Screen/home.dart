import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _selectindex = 0;

  // final _screens = [
  //   const Scaffold(
  //     body: Center(
  //       child: Text("Home"),
  //     ),
  //   ),
  //   const Scaffold(
  //     body: Center(
  //       child: Text("Explore"),
  //     ),
  //   ),
  //   const Scaffold(
  //     body: Center(
  //       child: Text("Add"),
  //     ),
  //   ),
  //   const Scaffold(
  //     body: Center(
  //       child: Text("Subscription"),
  //     ),
  //   ),
  //   const Scaffold(
  //     body: Center(
  //       child: Text("Library"),
  //     ),
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              "IslamicTube",
              style: TextStyle(),
            ),
            leadingWidth: 60.0,
            backgroundColor: Colors.green.shade700,
            leading: Padding(
              padding: EdgeInsets.fromLTRB(4, 4, 0, 8),
              child: Image.asset("assets/startLogo.png"),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.cast),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.supervised_user_circle_rounded),
              ),
            ],
          ),
        ],
      ),

      // child: Stack(
      //   children: _screens
      //       .asMap()
      //       .map(
      //         (i, screen) => MapEntry(
      //           i,
      //           Offstage(
      //             offstage: _selectindex != i,
      //             child: screen,
      //           ),
      //         ),
      //       )
      //       .values
      //       .toList(),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green.shade700,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectindex,
        onTap: (i) => setState(
          () {
            _selectindex = i;
          },
        ),
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            activeIcon: Icon(Icons.explore_outlined),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            activeIcon: Icon(Icons.add_circle_outlined),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            activeIcon: Icon(Icons.subscriptions_outlined),
            label: "Subscriptions",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            activeIcon: Icon(Icons.video_library_outlined),
            label: "Library",
          ),
        ],
      ),
    );
  }
}
