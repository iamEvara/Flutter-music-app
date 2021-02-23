import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class CatSlider extends StatelessWidget {
  const CatSlider({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List categories = [
      "Overview",
      "Tracks",
      "Albums",
      "Artists",
      "For you",
      "Recommended"
    ];
    int active = 0;
    return SizedBox(
      height: 50,
      width: size.width,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return SliderItem(
            text: categories[index],
            active: index == active ? true : false,
          );
        },
      ),
    );
  }
}

class SliderItem extends StatelessWidget {
  final text;
  final active;

  const SliderItem({Key key, this.text, this.active}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: active == true
              ? const EdgeInsets.only(right: 20)
              : const EdgeInsets.only(right: 25),
          child: Text(
            text,
            style: GoogleFonts.getFont(
              'Roboto Mono',
              color: active == true ? Palette.caption : Colors.white,
              fontSize: 17,
            ),
          ),
        ),
        active == true
            ? Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 5),
                child: Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      color: Palette.caption,
                      borderRadius: BorderRadius.circular(150)),
                ),
              )
            : Container(),
      ],
    );
  }
}
