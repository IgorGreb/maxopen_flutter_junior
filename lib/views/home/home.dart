import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:maxopen_flutter_junior/views/home/carusel_widgets.dart';
import 'package:maxopen_flutter_junior/views/search/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List cardList = [
    const Item(),
    const Item(),
    const Item(),
    const Item(),
    const Item(),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        children: [
          Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 5, bottom: 5),
                child: Row(
                  children: [
                    Text(
                      'Top Five',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      '.',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 30,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  viewportFraction: 0.9010,
                  enableInfiniteScroll: false,
                  height: 300,
                ),
                items: cardList.map((card) {
                  return Builder(builder: (BuildContext context) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.30,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: Colors.black,
                        child: card,
                      ),
                    );
                  });
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        const Text(
                          'Latest',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          '.',
                          style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 30,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 185.0),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SearchView()),
                              );
                            },
                            child: const Text(
                              'SE MORE',
                              style: TextStyle(
                                  color: Colors.yellow,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 22.0,
                  top: 10,
                ),
                child: SizedBox(
                  width: double.infinity,
                  height: 273,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset('assets/icons/large-cover2.png'),
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 200.0),
                                child: Text(
                                  'Hitman’s Wife’s',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 163.0),
                                child: Text(
                                  'Bodyguard',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 95.0),
                                    child: Text(
                                      '3.5',
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 245.0, top: 62),
                            child: SizedBox(
                                child: Image.asset(
                                    'assets/icons/Property 1=Full.png')),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 270.0, top: 62),
                            child: SizedBox(
                                child: Image.asset(
                                    'assets/icons/Property 1=Full.png')),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 295.0, top: 62),
                            child: SizedBox(
                                child: Image.asset(
                                    'assets/icons/Property 1=Full.png')),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 320.0, top: 62),
                            child: SizedBox(
                                child: Image.asset(
                                    'assets/icons/Property 1=Half.png')),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 345.0, top: 62),
                            child: SizedBox(
                                child: Image.asset(
                                    'assets/icons/Property 1=Empty.png')),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 200.0, top: 90),
                            child: SizedBox(
                              child: Text('Action, Comedy, Crime',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 200.0, top: 115),
                            child: SizedBox(
                              child: Flexible(
                                child: Text(
                                  'The world’s most lethal odd',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 200.0, top: 130),
                            child: SizedBox(
                              child: Flexible(
                                child: Text(
                                  'couple - bodyguard',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 200.0, top: 147),
                            child: SizedBox(
                              child: Flexible(
                                child: Text(
                                  'Michael Bryce and hitman',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 200.0, top: 164),
                            child: SizedBox(
                              child: Flexible(
                                child: Text(
                                  'Darius Kincaid - are back',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 200.0, top: 181),
                            child: SizedBox(
                              child: Flexible(
                                child: Text(
                                  'are back on anoth......',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w100,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
