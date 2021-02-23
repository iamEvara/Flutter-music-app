import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music/constants.dart';
import 'package:music/widgets/categories_slider.dart';
import 'package:music/widgets/popular.dart';
import 'package:music/widgets/top_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: App(),
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Palette.bg,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Text(
                    "Yellow",
                    style: GoogleFonts.getFont(
                      'Roboto Mono',
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                CatSlider(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0, top: 40),
                  child: Text(
                    "Popular this week",
                    style: GoogleFonts.getFont(
                      'Roboto Mono',
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Popular(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Top Tracks",
                        style: GoogleFonts.getFont(
                          'Roboto Mono',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          "See all",
                          style: GoogleFonts.getFont(
                            'Roboto Mono',
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Top(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
