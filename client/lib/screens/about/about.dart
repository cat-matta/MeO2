import 'package:client/constants.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: BackgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text(
                  "Welcome to your forest, your MeO2 forest....",
                  style: TextStyle(
                      color: DarkGreen,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      height: 1.3),
                  textAlign: TextAlign.center,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                      color: LightGreen.withOpacity(0.2),
                      border: Border.all(
                        color: DarkGreen.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Column(
                    children: [
                      Text(
                        "Your great grandparents left you a nice piece of land for you to escape to nature. On this acre is a sapling that has miracuslously started to grow after the toxic fumes polluted  the city after your great grandparents passed. This area has since been cleaned up after strict environmental regulations, but it is now your duty to make sure you keep toxic emissions out of your forest as much as possible.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: DarkGreen,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            height: 1.3),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text(
                        "We will measure this by the amount of waste you produce and types of meat you eat. Depending on the calculated carbon emissions, your one sapling can grow into a forest, or it can die.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: DarkGreen,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            height: 1.3),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                TextButton(
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
                  child: Text(
                    "Continue...",
                    style: TextStyle(
                        color: DarkGreen,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
