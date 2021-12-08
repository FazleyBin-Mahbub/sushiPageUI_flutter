import 'package:flutter/material.dart';
import 'package:flutter_practice/this%20months%20challenge/Sushi%20Page/data/category_data.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';

class SushiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        body: Stack(
          children: [
            Container(
              height: size.height * 0.6,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20),
                    child: Icon(
                      Icons.format_align_left_sharp,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Mdi.foodCroissant,
                          color: Colors.orange,
                          size: 150,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'umami'.toUpperCase(),
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                                fontSize: 50,
                              ),
                            ),
                            Text(
                              'Sushi Bar'.toUpperCase(),
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Row(
                children: [
                  buildItem(
                    padding: EdgeInsets.only(top: 290),
                    margin: EdgeInsets.only(left: 10),
                    height: size.height / 3,
                    width: 0.45 * size.width,
                    img: 'assets/sushi1.png',
                    text: 'ura-maki rolls',
                    imgheight: size.height * 0.225,
                  ),
                  buildItem(
                    padding: EdgeInsets.only(
                      top: 290,
                    ),
                    margin: EdgeInsets.only(left: 10),
                    height: size.height / 3,
                    width: 0.45 * size.width,
                    img: 'assets/sushi2.png',
                    text: 'maki rolls',
                    imgheight: size.height * 0.225,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 520.0, left: 15),
              child: Text(
                'Categories',
                style: GoogleFonts.oswald(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 560.0,
              ),
              child: ListView.builder(
                itemCount: categoryData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: size.height / 30,
                      width: size.width / 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(categoryData[index].icon),
                          Text(categoryData[index].text),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildItem(
    {double height,
    width,
    imgheight,
    String img,
    text,
    EdgeInsets padding,
    margin}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: padding,
      child: Container(
        height: height,
        margin: margin,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              img,
              height: imgheight,
            ),
            Spacer(),
            Text(
              text.toUpperCase(),
              style: GoogleFonts.oswald(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
