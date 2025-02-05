import 'package:flutter/material.dart';

import 'colors/color.dart';
import 'constant/constant.dart';

class NavigatorWidget extends StatefulWidget {
  final int? indexCurrentPage;


  const NavigatorWidget({super.key, this.indexCurrentPage});

  @override
  State<NavigatorWidget> createState() => _NavigatorWidgetState();
}

class _NavigatorWidgetState extends State<NavigatorWidget> {
  late int currentPage;

  @override
  void initState() {
    super.initState();
    currentPage =
    widget.indexCurrentPage == null ? 0 : widget.indexCurrentPage!;
  }

  @override
  Widget build(BuildContext context) {
    //currentPage= widget.indexCurrentPage==null? 0 : widget.indexCurrentPage!;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: pageList[currentPage],
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
            )
          ]),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5), topRight: Radius.circular(5)),
            child: Theme(
              data: Theme.of(context).copyWith(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                backgroundColor: backGroundColor,
                type: BottomNavigationBarType.fixed,
                currentIndex: currentPage,
                onTap: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                items: [
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      size: size.width / 18,
                      Icons.home_rounded,
                      color: navigatorActiveIconBackground,
                    ),
                    backgroundColor: navigatorBackgroundColor,
                    icon: Icon(
                      size: size.width / 18,
                      Icons.home_outlined,
                      color: navigatorIconBackground,
                    ),
                    //label: 'Home',
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.search_rounded,
                      size: size.width / 18,
                      color: navigatorActiveIconBackground,
                    ),
                    backgroundColor: navigatorBackgroundColor,
                    icon: Icon(
                      size: size.width / 18,
                      Icons.search_outlined,
                      color: navigatorIconBackground,
                    ),
                    //label: 'Home',
                    label: '',
                  ),
                  /*  BottomNavigationBarItem(
                    backgroundColor: navigatorBackgroundColor,
                    activeIcon: Icon(
                      Icons.search,
                      color: navigatorActiveIconBackground,
                    ),
                    icon: Icon(Icons.search,
                        color: navigatorIconBackground,),
                    label: '',
                    //label: 'Search',
                  ),*/
                  BottomNavigationBarItem(
                    backgroundColor: navigatorBackgroundColor,
                    activeIcon: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(
                          Icons.add_box,
                          size: size.width / 15,
                          color: navigatorActiveIconBackground,
                        ),
                      ),
                    ),
                    icon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Icon(
                        Icons.add_box_outlined,
                        size: size.width / 15,
                        color: navigatorIconBackground,
                      ),
                    ),
                    label: '',
                    // label: 'Add',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: navigatorBackgroundColor,
                    activeIcon: Icon(
                      size: size.width / 18,
                      Icons.notifications,
                      color: navigatorActiveIconBackground,
                    ),
                    icon: Icon(
                      size: size.width / 18,
                      Icons.notifications_outlined,
                      color: navigatorIconBackground,
                    ),
                    label: '',
                    //label: 'Notification',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: navigatorBackgroundColor,
                    activeIcon: Icon(
                      size: size.width / 18,
                      Icons.person,
                      color: navigatorActiveIconBackground,
                    ),
                    icon: Icon(
                      size: size.width / 18,
                      Icons.person_outlined,
                      color: navigatorIconBackground,
                    ),
                    //label: 'Profile',
                    label: '',
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}