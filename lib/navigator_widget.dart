import 'package:flutter/material.dart';

import 'color/color.dart';
import 'contant.dart';

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
                    activeIcon: Container(
                      width: size.width / 10,
                      height: size.width / 10,
                     // color: Colors.white,
                      child: Image.asset('assets/icons/Home(2).png'),
                    ),
                    backgroundColor: Colors.white,
                    icon: Container(
                      width: size.width / 10,
                      height: size.width / 10,

                      child: Image.asset('assets/icons/Home(2).png'),
                    ),
                    //label: 'Home',
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    activeIcon: SizedBox(
                      width: size.width / 10,
                      height: size.width / 10,
                      child: Image.asset('assets/icons/Sound.png'),
                    ),
                    backgroundColor: Colors.white,
                    icon: SizedBox(
                      width: size.width / 10,
                      height: size.width / 10,
                      child: Image.asset('assets/icons/Sound(1).png'),
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
                    backgroundColor: Colors.grey,
                    activeIcon: SizedBox(
                      width: size.width / 10,
                      height: size.width / 10,
                      child: Image.asset('assets/icons/User(1).png'),
                    ),
                    icon: SizedBox(
                      width: size.width / 10,
                      height: size.width / 10,
                      child: Image.asset('assets/icons/Profile(1).png'),
                    ),
                    label: '',
                    // label: 'Add',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
