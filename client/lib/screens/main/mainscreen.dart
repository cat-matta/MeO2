import 'package:client/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var co2_emissions = 5.2;
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: [
            Container(
              width: size.width / 1.1,
              height: size.height / 1.1,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: LightBlue,
                  border: Border.all(
                    color: DarkGreen,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(4))),
              child: Column(
                children: [
                  Text(
                    "CO2 emitted today",
                    style: GoogleFonts.overlock(
                        color: DarkGreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$co2_emissions",
                        style: GoogleFonts.overlockSc(
                            color: DarkGreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 75),
                      ),
                      Text(
                        "kg",
                        style: GoogleFonts.overlock(
                            textStyle: TextStyle(
                                color: DarkGreen,
                                fontWeight: FontWeight.bold,
                                fontSize: 25)),
                      ),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: size.width / 2,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(15),
                            backgroundColor: DarkGreen.withOpacity(0.65),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(
                                color: DarkGreen.withOpacity(0.2),
                              ),
                            )),
                        child: Text(
                          "Add CO2",
                          style: GoogleFonts.overlock(
                              textStyle: TextStyle(
                            color: DarkGreen,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                        onPressed: () {}),
                  ),
                  Spacer(),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    fit: StackFit.loose,
                    children: [
                      Image.asset(
                        "assets/images/1.png",
                        height: 380,
                      ),
                      Image.asset(
                        "assets/images/2.png",
                        height: 275,
                      ),
                      Image.asset(
                        "assets/images/3.png",
                        height: 240,
                      ),
                      Image.asset(
                        "assets/images/4.png",
                        height: 110,
                      ),
                      Image.asset("assets/images/5.png"),
                      Image.asset(
                        "assets/images/treeshack_mature.png",
                        height: 430,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
