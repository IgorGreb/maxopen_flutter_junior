import 'package:flutter/material.dart';
import 'package:maxopen_flutter_junior/views/main_layout/main_l.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latest',
      bottomNavigationBar: null,
      child: ListView(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const DetailPage();
                        }));
                      },
                      child: Hero(
                        tag: 'imageHero',
                        child: Image.asset(
                          'assets/icons/Movie-Card-Discover.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 205.0),
                child: Column(
                  children: [
                    InkWell(
                      child:
                          Image.asset('assets/icons/Movie-Card-Discover.png'),
                      onTap: () {},
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 380),
                child: Column(
                  children: [
                    InkWell(
                      child:
                          Image.asset('assets/icons/Movie-Card-Discover.png'),
                      onTap: () {},
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 205.0, top: 380),
                child: Column(
                  children: [
                    InkWell(
                      child:
                          Image.asset('assets/icons/Movie-Card-Discover.png'),
                      onTap: () {},
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 755),
                child: Column(
                  children: [
                    InkWell(
                      child:
                          Image.asset('assets/icons/Movie-Card-Discover.png'),
                      onTap: () {},
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 205.0, top: 755),
                child: Column(
                  children: [
                    InkWell(
                      child:
                          Image.asset('assets/icons/Movie-Card-Discover.png'),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.asset(
              'assets/icons/Rectangle 5.png',
            ),
          ),
        ),
      ),
    );
  }
}

