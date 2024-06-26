import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainLayout extends StatefulWidget {
  final Widget? child;
  final String? title;
  final BottomNavigationBar? bottomNavigationBar;

  const MainLayout(
      {required this.title,
      required this.child,
      this.bottomNavigationBar,
      super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0b0b0b),
      appBar: AppBar(
        leading:  const BackButton(color: Colors.yellow,),
        backgroundColor: const Color(0xff0b0b0b),
      ),
      body: SizedBox(width: double.infinity, child: widget.child),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: SizedBox(
                  width: 17.5,
                  height: 16,
                  child: Image.asset(
                    'assets/icons/Active.png',
                  ),
                ),
                onPressed: () {
                  setState(() {});
                },
              ),
              IconButton(
                iconSize: 10,
                icon: SizedBox(
                  width: 17.5,
                  height: 16,
                  child: Image.asset('assets/icons/Property 1=Default.png'),
                ),
                onPressed: () {
                  setState(() {});
                },
              ),
              IconButton(
                iconSize: 10,
                icon: SizedBox(
                  width: 17.5,
                  height: 16,
                  child: Image.asset('assets/icons/Property 1=Default (2).png'),
                ),
                onPressed: () {
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
