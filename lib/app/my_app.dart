import 'package:flutter/material.dart';
import 'package:maxopen_flutter_junior/views/home/home.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: const HomePage(),
          backgroundColor: Colors.black,
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
                      child: Image.asset(
                          'assets/icons/Property 1=Default (2).png'),
                    ),
                    onPressed: () {
                      setState(() {});
                    },
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
