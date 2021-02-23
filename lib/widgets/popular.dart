import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music/constants.dart';
import 'package:music/detail.dart';

class Popular extends StatelessWidget {
  const Popular({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Details())),
      child: Container(
        height: 225,
        width: size.width,
        margin: EdgeInsets.only(bottom: 40),
        padding: EdgeInsets.only(top: 20, left: 20),
        decoration: BoxDecoration(
          color: Palette.caption,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22),
            bottomLeft: Radius.circular(22),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Hero(
                          tag: 'cover-image',
                          child: Image.asset(
                            "assets/cover.jpg",
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              "Yellow",
                              style: GoogleFonts.getFont(
                                'Roboto Mono',
                                color: Palette.bg,
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 0.0),
                            child: Text(
                              "Coldplay",
                              style: GoogleFonts.getFont(
                                'Roboto Mono',
                                color: Palette.bg,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              "5:32",
                              style: GoogleFonts.getFont(
                                'Roboto Mono',
                                color: Palette.bg,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, top: 10),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: RotationTransition(
                        turns: new AlwaysStoppedAnimation(90 / 360),
                        child: Icon(
                          Icons.chevron_left,
                          color: Palette.bg,
                          size: 34,
                        )),
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              width: size.width - 60,
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              height: 70,
              decoration: BoxDecoration(
                color: Palette.extra,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22),
                  topRight: Radius.circular(22),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconItem(
                    count: 320,
                    icon: Icons.play_arrow,
                  ),
                  IconItem(
                    count: 230,
                    icon: Icons.file_download,
                  ),
                  IconItem(
                    count: 550,
                    icon: Icons.favorite,
                  ),
                  IconItem(
                    count: 320,
                    icon: Icons.reply,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class IconItem extends StatelessWidget {
  final int count;
  final IconData icon;

  const IconItem({Key key, this.count, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 26,
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          count.toString(),
          style: GoogleFonts.getFont('Roboto Mono',
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ],
    );
  }
}
