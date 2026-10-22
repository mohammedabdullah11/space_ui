import 'package:flutter/material.dart';
import 'package:space_ui/core/custom_button.dart';
import 'package:space_ui/ui/planets_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  static const String routesName = 'start_screen';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.centerLeft,
      
                children: [
                  Image.asset("assets/images/backg1.png"),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "Explore\nThe\nUniverse ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Align
                  (
                     alignment: Alignment.bottomCenter,
                    child: CustomButton(
                      text: "Explore",
                      onPressed: (){
                        Navigator.pushNamed(context,PlanetsScreen.routesName );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
