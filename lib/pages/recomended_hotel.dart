import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../contanta.dart';

class RecomendedHotelPlan extends StatelessWidget {
  const RecomendedHotelPlan({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendedHotel(
            image: "assets/images/Gambar1.png",
            hotel: "Bimosaurus Hotel",
            location: "Safari, Buitenzorg",
            rating: "4/9",
            price: 599999,
            press: () {},
          ),
          RecomendedHotel(
            image: "assets/images/Gambar2.png",
            hotel: "Daino Sas Hotel",
            location: "Bali, Denpasar",
            rating: "4/9",
            price: 999999,
            press: () {},
          ),
          RecomendedHotel(
            image: "assets/images/Gambar1.png",
            hotel: "Bimosaurus Hotel",
            location: "Safari, Buitenzorg",
            rating: "4/9",
            price: 599999,
            press: () {},
          ),
          RecomendedHotel(
            image: "assets/images/Gambar2.png",
            hotel: "Daino Sas Hotel",
            location: "Bali, Denpasar",
            rating: "4/9",
            price: 999999,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendedHotel extends StatelessWidget {
  const RecomendedHotel({
    Key key,
    this.image,
    this.hotel,
    this.location,
    this.rating,
    this.price,
    this.press,
  }) : super(key: key);
  final String image, hotel, location, rating;
  final int price;
  final Function press;
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: 24,
        top: 10 / 2,
      ),
      width: 280,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            child: GestureDetector(
              onTap: press,
              child: Image.asset(
                image,
                scale: 3,
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Container(
            decoration: BoxDecoration(),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      "$hotel",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/images/location.png",
                          scale: 3,
                        ),
                        Text(
                          "$location",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: textthird,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Row(
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
                      width: 5,
                    ),
                    Image.asset(
                      "assets/images/start.png",
                      scale: 3,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          SizedBox(
            height: 1,
          ),
          Row(
            children: [
              Text(
                "Price Start from:",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: textthird,
                ),
              ),
              Spacer(),
              Text(
                "IDR $price",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: backgroundsecond,
                ),
              ),
              Text(
                "/night",
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: textthird,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
