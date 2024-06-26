import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/icons/large-cover (1) 2.png'),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 268),
          child: InkWell(
            child: Image.asset('assets/icons/Property 1=Default (2).png'),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 210, left: 10),
          child: Text(
            'Hitman’s Wife’s Bodyguard',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 243, left: 10),
          child: InkWell(
              child: Text(
            '3.5',
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 248, left: 55),
          child:
              InkWell(child: Image.asset('assets/icons/Property 1=Full.png')),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 248, left: 80),
          child:
              InkWell(child: Image.asset('assets/icons/Property 1=Full.png')),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 248, left: 105),
          child:
              InkWell(child: Image.asset('assets/icons/Property 1=Full.png')),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 248, left: 130),
          child:
              InkWell(child: Image.asset('assets/icons/Property 1=Half.png')),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 248, left: 155),
          child:
              InkWell(child: Image.asset('assets/icons/Property 1=Empty.png')),
        ),
      ],
    );
  }
}
