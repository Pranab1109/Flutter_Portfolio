import 'package:first_web_app/colors.dart';
import 'package:first_web_app/widgets/centered_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionThree extends StatelessWidget {
  final ScrollController scrollController;

  const SectionThree({Key key, this.scrollController}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(children: [
        SizedBox(
          height: size.height,
          width: size.width,
          child: Container(
            alignment: Alignment.bottomLeft,
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Cooloors.sectionThreeBackgroundColor1,
                    Cooloors.sectionThreeBackgroundColor2,
                    Cooloors.sectionThreeBackgroundColor3
                  ]),
            ),
            child: Text(
              "</>",
              style: GoogleFonts.aclonica(
                fontSize: size.width / 5,
                color: Colors.black12.withOpacity(0.3),
              ),
            ),
          ),
        ),
        CenteredView(
          child: Column(
            children: [
              SizedBox(
                height: size.height / 6.5,
              ),
              Text(
                "My Works",
                style: GoogleFonts.abrilFatface(
                  textStyle: TextStyle(
                    color: Cooloors.primaryDarkTextColor,
                    letterSpacing: 0.5,
                    fontSize: 50,
                    shadows: [
                      Shadow(
                          color: Colors.black12,
                          offset: Offset(10, 10),
                          blurRadius: 5.0),
                      Shadow(
                          color: Colors.black12,
                          offset: Offset(3, 3),
                          blurRadius: 2.0),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GridView.count(
                  childAspectRatio: 1.8,
                  physics: BouncingScrollPhysics(),
                  mainAxisSpacing: 10.0,
                  // crossAxisSpacing: 5.0,
                  crossAxisCount: 3,
                  children: [
                    MyWorks(
                      description: "description 1",
                      img: "Images/pranab.jpeg",
                    ),
                    MyWorks(
                      description: "description 2",
                      img: "Images/pranab.jpeg",
                    ),
                    MyWorks(
                      description: "description 3",
                      img: "Images/pranab.jpeg",
                    ),
                    MyWorks(
                      description: "description 4",
                      img: "Images/pranab.jpeg",
                    ),
                    MyWorks(
                      description: "description 5",
                      img: "Images/pranab.jpeg",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class MyWorks extends StatelessWidget {
  final String img;
  final String description;

  const MyWorks({Key key, this.img, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(img),
        Expanded(
          child: Container(
            height: double.infinity,
            child: Text(description),
          ),
        )
      ],
    );
  }
}
