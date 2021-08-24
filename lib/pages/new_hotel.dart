import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../contanta.dart';

class HotelPlan extends StatelessWidget {
  const HotelPlan({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              NewHotel(
                image: "assets/images/Gambar1.png",
                hotel: "Skytown Hotel",
                country: "Sibolga, Medan",
                rating: "4/9",
              ),
              NewHotel(
                image: "assets/images/Gambar1.png",
                hotel: "GH Setiabuddy",
                country: "Setiabuddy, Bandung",
                rating: "3/9",
              ),
              NewHotel(
                image: "assets/images/Gambar1.png",
                hotel: "GH Setiabuddy",
                country: "Setiabuddy, Bandung",
                rating: "3/9",
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              NewHotel(
                image: "assets/images/Gambar2.png",
                hotel: "Skytown Hotel",
                country: "Sibolga, Medan",
                rating: "4/9",
              ),
              NewHotel(
                image: "assets/images/Gambar2.png",
                hotel: "GH Setiabuddy",
                country: "Setiabuddy, Bandung",
                rating: "3/9",
              ),
              NewHotel(
                image: "assets/images/Gambar2.png",
                hotel: "Damsaurus Hotel",
                country: "Pasteur, Bandung",
                rating: "5/9",
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              NewHotel(
                image: "assets/images/Gambar3.png",
                hotel: "Skytown Hotel",
                country: "Sibolga, Medan",
                rating: "4/9",
              ),
              NewHotel(
                image: "assets/images/Gambar3.png",
                hotel: "GH Setiabuddy",
                country: "Setiabuddy, Bandung",
                rating: "3/9",
              ),
              NewHotel(
                image: "assets/images/Gambar3.png",
                hotel: "Damsaurus Hotel",
                country: "Pasteur, Bandung",
                rating: "5/9",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NewHotel extends StatelessWidget {
  const NewHotel({
    Key key,
    this.image,
    this.hotel,
    this.country,
    this.rating,
  }) : super(key: key);
  final String image, hotel, country, rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              color: Colors.white38,
            ),
            width: 342,
            height: 94,
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 8,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                        child: Image.asset(
                          image,
                          width: 82,
                          height: 72,
                          fit: BoxFit.cover,
                        ),
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
                        "$rating",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: textthird,
                        ),
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Image.asset(
                        "assets/images/start.png",
                        scale: 3,
                      ),
                    ],
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
