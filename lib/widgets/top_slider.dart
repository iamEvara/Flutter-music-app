import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class Top extends StatelessWidget {
  final List tracks = [
    {
      "name": "Moonlight",
      "duration": "2:15",
      "listens": "100,023",
      "favorated": true
    },
    {
      "name": "I Know You So Well",
      "duration": "2:48",
      "listens": "56,947",
      "favorated": false
    },
    {
      "name": "SAD!",
      "duration": "2:47",
      "listens": "100,893",
      "favorated": false
    },
    {
      "name": "Changes",
      "duration": "2:02",
      "listens": "298,396",
      "favorated": true
    },
    {
      "name": "Death Bed",
      "duration": "2:53",
      "listens": "997,726",
      "favorated": true
    },
    {
      "name": "Loosing Interest",
      "duration": "1:57",
      "listens": "164,494",
      "favorated": false
    },
    {
      "name": "Lovely",
      "duration": "3:20",
      "listens": "276,907",
      "favorated": true
    },
    {
      "name": "Legends",
      "duration": "3:12",
      "listens": "664,325",
      "favorated": false
    },
    {
      "name": "It's You",
      "duration": "3:33",
      "listens": "287,838",
      "favorated": true
    },
    {
      "name": "Jocelyn Flores",
      "duration": "1:59",
      "listens": "388,992",
      "favorated": false
    },
    {
      "name": "Hope",
      "duration": "1:51",
      "listens": "183,511",
      "favorated": false
    },
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 100.0 * tracks.length,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: tracks.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(width: 1, color: Colors.white),
                            ),
                            child: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 27,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: size.width - 211,
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom: 5.0),
                                  child: Text(
                                    tracks[index]['name'],
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.getFont(
                                      'Roboto Mono',
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: Text(
                                  (tracks[index]['listens'].toString()) +
                                      " Listners",
                                  style: GoogleFonts.getFont(
                                    'Roboto Mono',
                                    color: Palette.captioned,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Text(
                              tracks[index]['duration'],
                              style: GoogleFonts.getFont(
                                'Roboto Mono',
                                color: Palette.captioned,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.favorite,
                            color: tracks[index]['favorated'] == true
                                ? Palette.primary
                                : Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
