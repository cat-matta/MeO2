import 'package:client/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
          width: size.width,
          color: BackgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                Text(
                  "Welcome to your forest, your MeO2 forest....",
                  style: GoogleFonts.openSans(
                      textStyle: TextStyle(
                          color: DarkGreen,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          height: 1.3)),
                  textAlign: TextAlign.center,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: LightGreen.withOpacity(0.2),
                      border: Border.all(
                        color: DarkGreen.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your great grandparents left you a nice piece of land for you to escape to nature. On this acre is a sapling that has miracuslously started to grow after the toxic fumes polluted  the city after your great grandparents passed. This area has since been cleaned up after strict environmental regulations, but it is now your duty to make sure you keep toxic emissions out of your forest as much as possible.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: DarkGreen,
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                height: 1.3)),
                      ),
                      // Spacer(),
                      Text(
                        "We will measure this by the amount of waste you produce and types of meat you eat. Depending on the calculated carbon emissions, your one sapling can grow into a forest, or it can die.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: DarkGreen,
                                fontSize: 20,
                                // fontWeight: FontWeight.bold,
                                height: 1.3)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 60,
                  width: size.width / 2,
                  child: TextButton(
                    onPressed: () {
                      print("pressed");
                    },
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(15),
                        backgroundColor: LightGreen.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            color: DarkGreen.withOpacity(0.9),
                          ),
                        )),
                    child: Text("Continue...",
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            color: DarkGreen,
                            fontSize: 20,
                          ),
                        )),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
