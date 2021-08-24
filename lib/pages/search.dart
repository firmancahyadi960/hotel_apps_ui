import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../contanta.dart';
import 'lastest_search.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Locations",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: textthird,
                        ),
                      ),
                      Text(
                        "Bandung, Indonesia",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        width: 330,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 38,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                icon: Icon(Icons.search),
                                hintText: "Find your Favorite Hotels",
                                enabledBorder: InputBorder.none),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 24,
                ),
                LastestPlan(),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Nearby You",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Column(
                        children: [
                          Nearby(
                            image: "assets/images/Gambar4.png",
                            hotel: "GH Setiabuddy",
                            country: "Setiabuddy, Bandung",
                            distance: "0,1km",
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Nearby(
                            image: "assets/images/Gambar5.png",
                            hotel: "Damsaurus Hotel",
                            country: "Pasteur, Bandung",
                            distance: "1,6km",
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Nearby(
                            image: "assets/images/Gambar6.png",
                            hotel: "Andjoy Hotel",
                            country: "Kebon Jaty, Bandung",
                            distance: "2,2km",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Nearby extends StatelessWidget {
  const Nearby({
    Key key,
    this.image,
    this.hotel,
    this.country,
    this.distance,
  }) : super(key: key);
  final String image, hotel, country, distance;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 94,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
          color: Colors.white),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: 8,
                ),
                child: Image.asset(
                  image,
                  width: 82,
                  height: 72,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$hotel",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "$country",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: textthird,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              right: 12,
            ),
            child: Row(
              children: [
                Text(
                  "$distance",
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFF2735B),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
