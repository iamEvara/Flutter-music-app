import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music/constants.dart';

class Details extends StatelessWidget {
  const Details({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Palette.bg,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.queue_music,
              color: Colors.white,
              size: 24,
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          "PLAYING NOW",
          style: GoogleFonts.getFont(
            'Roboto Mono',
            color: Palette.bg,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(right: 20.0, top: 10),
          child: Align(
            alignment: Alignment.topRight,
            child: RotationTransition(
              turns: new AlwaysStoppedAnimation(-90 / 360),
              child: Icon(
                Icons.chevron_left,
                color: Palette.bg,
                size: 34,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 400,
              width: size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    left: 0.0,
                    top: 0,
                    child: Container(
                      color: Palette.caption,
                      width: size.width * 0.80,
                      height: 300,
                    ),
                  ),
                  Positioned(
                    left: size.width * 0.10,
                    top: 100,
                    child: Container(
                      alignment: Alignment.center,
                      width: size.width * 0.80,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(33),
                        image: DecorationImage(
                          image: AssetImage("assets/cover.jpg"),
                          fit: BoxFit.fill,
                          repeat: ImageRepeat.noRepeat,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(size.width * 0.10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Yellow",
                        style: GoogleFonts.getFont(
                          'Roboto',
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.favorite, color: Palette.primary),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Coldplay",
                    style: GoogleFonts.getFont(
                      'Roboto',
                      color: Palette.captioned,
                      fontSize: 17,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.10 - 20),
              child: SizedBox(
                width: size.width * 0.90,
                child: SliderTheme(
                  data: SliderThemeData(
                    valueIndicatorColor:
                        Colors.blue, // This is what you are asking for
                    inactiveTrackColor: Colors.grey[900], // Custom Gray Color
                    activeTrackColor: Palette.primary,
                    thumbColor: Palette.primary,

                    overlayColor: Palette.bg, // Custom Thumb overlay Color
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                  ),
                  child: Slider(
                    value: 1,
                    onChanged: (_) {
                      print(_);
                    },
                    min: 0,
                    max: 10,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.10 + 10, right: size.width * 0.10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "2:23",
                    style: GoogleFonts.getFont(
                      'Roboto Mono',
                      color: Palette.captioned,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "5:03",
                    style: GoogleFonts.getFont(
                      'Roboto Mono',
                      color: Palette.captioned,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SizedBox(
                width: size.width * 0.80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.shuffle,
                      color: Palette.captioned,
                      size: 28,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Icon(
                            Icons.fast_rewind,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Palette.primary,
                            borderRadius: BorderRadius.circular(150),
                          ),
                          width: 50,
                          height: 50,
                          child: Icon(
                            Icons.pause,
                            color: Palette.bg,
                            size: 28,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Icon(
                            Icons.fast_forward,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.repeat,
                      color: Palette.captioned,
                      size: 28,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
    );
  }
}
